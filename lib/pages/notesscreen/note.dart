import 'package:caretutors/controller/notes_controller.dart';
import 'package:caretutors/models/notes_model.dart';
import 'package:caretutors/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../widget/custom_button.dart';

class NoteScreen extends StatefulWidget {
  const NoteScreen({super.key});

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();

    final controller = Get.put(NotesController());

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        centerTitle: true,
        title: const Text(
          "Add Note",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColors.backgroundColor,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1),
          child: Divider(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextFormField(
              controller: titleController,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              minLines: 1,
              maxLines: 2,
              decoration: const InputDecoration(
                hintText: 'Title',
                border: InputBorder.none,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: TextFormField(
                controller: descriptionController,
                maxLines: 20,
                minLines: 20,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                decoration: const InputDecoration(
                  hintText: 'Description about your notes',
                  border: InputBorder.none,
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomButton(
        text: 'Save Changes',
        onTap: () {
          if (titleController.text.isEmpty ||
              descriptionController.text.isEmpty) {
            Get.snackbar("Error", "Title and Description is required");
          } else {
            controller.addNotes(
              NotesModel(
                title: titleController.text,
                description: descriptionController.text,
                createdDate: DateTime.now(),
              ),
            );
            GoRouter.of(context).go('/home_screen');
          }
        },
      ),
    );
  }
}
