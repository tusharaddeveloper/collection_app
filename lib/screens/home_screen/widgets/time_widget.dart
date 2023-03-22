import 'package:collection_app/utils/app_colors.dart';
import 'package:collection_app/utils/app_strings.dart';
import 'package:collection_app/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TimeWidget extends StatelessWidget {
  String title;
  String? selectedValue;
  Function onValueChange;
  List<String> timeList;

  TimeWidget({Key? key, this.selectedValue, required this.title, required this.onValueChange, required this.timeList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: style20(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: DropdownButton<String>(
              icon: const Icon(Icons.keyboard_arrow_down,color: blackColor,size: 28),
              isExpanded: true,
              hint: Text(selectTimeStr, style: style16()),
              value: selectedValue,
              elevation: 16,
              style: const TextStyle(color: blackColor),
              underline: Container(),
              onChanged: (String? value) {
                onValueChange(value);
              },
              items: timeList.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        )
      ],
    ));
  }
}
