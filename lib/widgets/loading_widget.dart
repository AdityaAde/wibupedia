import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingWidget {
  static void show(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => Center(
        child: SizedBox(
          width: 65,
          height: 65,
          child: LottieBuilder.asset(
            'assets/lottie/loading.json',
            repeat: true,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
