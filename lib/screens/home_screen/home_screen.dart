import 'package:collection_app/screens/home_screen/widgets/app_button.dart';
import 'package:collection_app/screens/home_screen/widgets/date_widget.dart';
import 'package:collection_app/screens/home_screen/widgets/time_widget.dart';
import 'package:collection_app/utils/app_colors.dart';
import 'package:collection_app/utils/app_strings.dart';
import 'package:collection_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(selectCollectionDT, style: style20(fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 20),
                child: Row(children: const [
                  DateWidget(title: todayStr, date: "20 Dec", isSelected: true),
                  DateWidget(title: tomorrowStr, date: "21 Dec", isSelected: false),
                  DateWidget(title: selectDateStr, date: "22 Dec", isSelected: false),
                ]),
              ),
              Row(
                children: [
                  TimeWidget(title: morningStr, timeList: morningTimeList, onValueChange: (String? value) {}),
                  const SizedBox(width: 16),
                  TimeWidget(title: afternoonStr, timeList: afternoonTimeList, onValueChange: (String? value) {}),
                ],
              ),
              const SizedBox(height: 28),
              Text(selectDeliveryDT, style: style20(fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 20),
                child: Row(children: const [
                  DateWidget(title: todayStr, date: "20 Dec", isSelected: true),
                  DateWidget(title: tomorrowStr, date: "21 Dec", isSelected: false),
                  DateWidget(title: selectDateStr, date: "22 Dec", isSelected: false),
                ]),
              ),
              Row(
                children: [
                  TimeWidget(title: morningStr, timeList: morningTimeList, onValueChange: (String? value) {}),
                  const SizedBox(width: 16),
                  TimeWidget(title: afternoonStr, timeList: afternoonTimeList, onValueChange: (String? value) {}),
                ],
              ),
              const SizedBox(height: 20),
              Card(
                color: primaryLightColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  child: Text(deliveryChargeNote, style: style16(), textAlign: TextAlign.center),
                ),
              ),
              Spacer(),
              AppButton(btnTxt: continueStr, onTap: () {})
            ],
          ),
        ),
      ),
    );
  }
}
