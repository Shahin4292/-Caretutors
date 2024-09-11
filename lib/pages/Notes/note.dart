import 'package:caretutors/pages/widget/custom_button.dart';
import 'package:caretutors/utils/color.dart';
import 'package:flutter/material.dart';

class NoteScreen extends StatefulWidget {
  const NoteScreen({super.key});

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.link),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
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
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
              minLines: 1,
              maxLines: 2,
              decoration: const InputDecoration(
                hintText: 'Title',
                border: InputBorder.none,
              ),
            ),
            const SizedBox(height: 10,),
            Expanded(
              child: TextFormField(
                maxLines: 20,
                minLines: 20,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                ),
                decoration: const InputDecoration(
                  hintText: 'Description about your notes',
                  border: InputBorder.none,
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomButton(text: 'Save Changes', onTap: () {  },),
    );
  }
}
