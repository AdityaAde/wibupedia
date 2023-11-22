import 'package:flutter/material.dart';

import '../component/theme/theme.dart';

class ButtonWidget {
  static outline(String title, {Widget? icon}) {
    return Container(
      height: 57,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.dark2,
        border: Border.all(color: AppColor.dark3),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon ?? const SizedBox(),
          const SizedBox(width: 12),
          Text(
            title,
            style: AppStyle.materialTextStyle.bodyLarge
                ?.copyWith(fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
