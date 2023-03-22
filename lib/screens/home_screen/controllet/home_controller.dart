import 'package:collection_app/utils/app_constant.dart';
import 'package:collection_app/utils/app_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxString selectedCollectionTime = ''.obs;
  RxString selectedDeliveryTime = ''.obs;
  Rx<DateTime> selectedCollectionDate = DateTime.now().obs;
  Rx<DateTime> selectedDeliveryDate = DateTime.now().obs;

  validateDateTime(BuildContext context) {
    if (selectedCollectionTime.value.isEmpty) {
      showSnackBar(context: context, msg: selectCollectionTimeError);
    } else if (selectedDeliveryTime.value.isEmpty) {
      showSnackBar(context: context, msg: selectDeliveryTimeError);
    } else {
      DateTime? collectionTime = stringToDateTime(selectedCollectionDate.value, selectedCollectionTime.value.split(" - ").last);
      DateTime? deliveryTime = stringToDateTime(selectedDeliveryDate.value, selectedDeliveryTime.value.split(" - ").first);
      if (collectionTime!.difference(deliveryTime!).isNegative) {
        showSnackBar(context: context, msg: successStr);
      } else {
        showSnackBar(context: context, msg: deliveryTimeError);
      }
    }
  }
}
