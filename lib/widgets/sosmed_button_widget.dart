import 'package:flutter/material.dart';

import '../component/theme/theme.dart';

class SosmedButtonWidget extends StatelessWidget {
  const SosmedButtonWidget({
    super.key,
    required this.sosmedIcon,
    this.onTap,
  });

  final Widget sosmedIcon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: AppColor.dark2,
            border: Border.all(color: AppColor.dark3),
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
          child: Center(child: sosmedIcon),
        ),
      ),
    );
  }
}
