import 'package:flutter/material.dart';

import '../../../../component/theme/theme.dart';

class RichtextWidget extends StatelessWidget {
  const RichtextWidget({
    super.key,
    required this.textOne,
    required this.textTwo,
    this.onTap,
  });

  final String textOne;
  final String textTwo;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textOne,
            style: AppStyle.materialTextStyle.bodyMedium
                ?.copyWith(fontWeight: FontWeight.w300)),
        const SizedBox(width: 4),
        InkWell(
          onTap: onTap,
          child: Text(
            textTwo,
            style: AppStyle.materialTextStyle.bodyMedium?.copyWith(
              color: AppColor.primary500,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
