import 'package:caretutors/utils/color.dart';
import 'package:flutter/material.dart';

class CustomSingleNote extends StatelessWidget {
  final String title;
  final String description;
  final String date;

  const CustomSingleNote(
      {super.key,
      required this.title,
      required this.description,
      required this.date});

  @override
  Widget build(BuildContext context) {
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
          title,
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
              description,
              style: TextStyle(color: Colors.black.withOpacity(.5)),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  date,
                  style: TextStyle(
                    color: Colors.black.withOpacity(.5),
                    fontSize: 11,
                  ),
                ),
                InkWell(onTap: () {}, child: const Icon(Icons.delete)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
