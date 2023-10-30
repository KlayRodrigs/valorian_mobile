import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lottie/lottie.dart';
import 'package:toastification/toastification.dart';
import 'package:valorian_mobile/app/common/app_colors.dart';

class ToastMessageService {
  static void toastMessage(BuildContext context, String text, Color color,
      Icon icon, String path, bool success) async {
    toastification.show(
        context: context,
        title: text,
        autoCloseDuration: const Duration(milliseconds: 2300),
        backgroundColor:
            success ? AppColors.successColor : AppColors.errorColor,
        dragToClose: false,
        closeOnClick: false,
        pauseOnHover: false,
        icon: success
            ? LottieBuilder.asset('assets/success.json', height: 50)
            : LottieBuilder.asset('assets/error.json', height: 50),
        type: ToastificationType.success,
        style: ToastificationStyle.fillColored,
        foregroundColor: AppColors.corBranca,
        showProgressBar: true,
        closeButtonShowType: CloseButtonShowType.none);
    if (success == false) {
    } else {
      await Future.delayed(const Duration(milliseconds: 2800));
      Modular.to.navigate(path);
    }
  }
}
