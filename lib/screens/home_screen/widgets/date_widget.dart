import 'package:collection_app/utils/app_colors.dart';
import 'package:collection_app/utils/app_strings.dart';
import 'package:collection_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class DateWidget extends StatelessWidget {
  final String title;
  final String date;
  final bool isSelected;

  const DateWidget({Key? key, required this.date, required this.title, required this.isSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Card(
          color: isSelected ? primaryColor : whileColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(title, style: style16(textColor: isSelected ? whileColor : blackColor)),
                const SizedBox(height: 4),
                Text(date, style: style16(textColor: isSelected ? whileColor : blackColor, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ));
  }
}
