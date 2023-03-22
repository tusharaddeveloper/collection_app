import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String numToString(num value) {
  return value.toStringAsFixed(2);
}

String getFormatDate(DateTime date) {
  final DateFormat formatter = DateFormat('d MMM');
  final String formatted = formatter.format(date);
  return formatted;
}

String getStringOfDate(DateTime date) {
  final DateFormat formatter = DateFormat('yyyy-MM-dd');
  final String formatted = formatter.format(date);
  return formatted;
}

DateTime? stringToDateTime(DateTime date, String time) {
  try {
    String newTime = "";
    if (time.contains("PM")) {
      int pmTime = int.parse(time.replaceAll(" PM", "").split(":").first);
      newTime = "${pmTime < 12 ? pmTime + 12 : 12}:00";
    } else {
      newTime = time.replaceAll(" AM", "");
    }
    return DateTime.parse("${getStringOfDate(date)} $newTime:00");
  } catch (e) {
    return null;
  }
}

showSnackBar({required BuildContext context, required String msg}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
}
