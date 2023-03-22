import 'package:collection_app/utils/app_colors.dart';
import 'package:collection_app/utils/app_strings.dart';
import 'package:collection_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String btnTxt;
  Function onTap;

  AppButton({Key? key, required this.btnTxt, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: InkWell(
        onTap: (){
          onTap();
        },
        child: Card(
          color: primaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
          child: Center(
            child: Text(btnTxt, style: style20(textColor: whileColor)),
          ),
        ),
      ),
    );
  }
}
