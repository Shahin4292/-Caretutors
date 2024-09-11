import 'package:caretutors/utils/color.dart';
import 'package:flutter/material.dart';

class CustomSingleNote extends StatelessWidget {
  const CustomSingleNote({super.key});

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
          "Soft",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi theke, this is notes",
              style: TextStyle(color: Colors.black.withOpacity(.5)),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "12.04 Am",
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
