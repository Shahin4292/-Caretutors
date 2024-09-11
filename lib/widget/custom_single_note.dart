import 'package:caretutors/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../controller/notes_controller.dart';

class CustomSingleNote extends StatelessWidget {
  final int index;

  const CustomSingleNote({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NotesController());
    final note = controller.notes.elementAt(index);

    // final notes = controller.notes[index];
    final createDateFormat = DateFormat.yMMMMd().format(note.createdDate);
    final createTimeFormat = DateFormat.jm().format(note.createdDate);

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.black.withOpacity(0.2),
        ),
      ),
      child: ListTile(
        horizontalTitleGap: 0,
        leading: Container(
          height: 13,
          width: 13,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: AppColors.backgroundColor),
        ),
        title: Text(
          note.title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              note.description,
              style: TextStyle(color: Colors.black.withOpacity(.5)),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$createDateFormat - $createTimeFormat',
                  style: TextStyle(
                    color: Colors.black.withOpacity(.5),
                    fontSize: 11,
                  ),
                ),
                InkWell(
                    onTap: () {
                      controller.deleteNotes(index);
                    },
                    child: const Icon(Icons.delete)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
