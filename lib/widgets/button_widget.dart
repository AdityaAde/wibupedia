import 'package:flutter/material.dart';

import '../component/theme/theme.dart';

class ButtonWidget {
  static outline(String title,
      {Widget? icon,
      VoidCallback? onTap,
      double radius = 16,
      double height = 57}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColor.dark2,
          border: Border.all(color: AppColor.dark3),
          borderRadius: BorderRadius.circular(radius),
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
      ),
    );
  }

  static button(String title,
      {Widget? icon,
      VoidCallback? onTap,
      double radius = 8,
      double height = 57}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColor.primary500,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              icon,
              const SizedBox(width: 12),
            ],
            Text(
              title,
              style: AppStyle.materialTextStyle.bodyLarge
                  ?.copyWith(fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}
