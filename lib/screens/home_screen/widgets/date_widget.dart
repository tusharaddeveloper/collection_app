import 'package:collection_app/screens/home_screen/controllet/home_controller.dart';
import 'package:collection_app/utils/app_colors.dart';
import 'package:collection_app/utils/app_constant.dart';
import 'package:collection_app/utils/app_strings.dart';
import 'package:collection_app/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DateWidget extends StatelessWidget {
  final String title;
  final DateTime date;
  final DateTime selectedDate;
  final Function onDateSelected;

  const DateWidget({Key? key, required this.date, required this.title, required this.selectedDate, required this.onDateSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
      onTap: () {
        onDateSelected(date);
      },
      child: Card(
        color: date.difference(selectedDate).inHours == 0 ? primaryColor : whileColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(title, style: style16(textColor: date.difference(selectedDate).inHours == 0 ? whileColor : blackColor)),
              const SizedBox(height: 4),
              Text(getFormatDate(date), style: style16(textColor: date.difference(selectedDate).inHours == 0 ? whileColor : blackColor, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    ));
  }
}
