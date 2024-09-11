import 'package:caretutors/controller/notes_controller.dart';
import 'package:caretutors/pages/routes/routes_name.dart';
import 'package:caretutors/pages/widget/custom_single_note.dart';
import 'package:caretutors/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NotesController());

    return Scaffold(
      body: Container(
        color: AppColors.backgroundColor,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "My Notes",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.menu)),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.search)),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert)),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Obx(
                      () => SingleChildScrollView(
                        child: Column(
                          children: [
                            controller.notes.isEmpty
                                ? const Center(
                                    child: Text("No Notes Available!"),
                                  )
                                : ListView.builder(
                                    shrinkWrap: true,
                                    primary: false,
                                    itemCount: controller.notes.length,
                                    itemBuilder: (context, index) {
                                      return const CustomSingleNote(
                                        title: 'Hello',
                                        description:
                                            'sjsjdisjfjsifjsifjsdjfskdfjsjfsdjsdjfsjfsdfjskdfjsdkjfsdjfksdjdfksjfsdkfjieurierutrutriuterut',
                                        date: '12.05 Am',
                                      );
                                    },
                                  )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        shape: const CircleBorder(),
        onPressed: () => Get.toNamed(RoutesName.noteScreen),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
