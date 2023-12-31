import 'package:flutter/material.dart';

import '../../../component/theme/theme.dart';
import '../../../gen/assets.gen.dart';

class EmptyListWidget extends StatelessWidget {
  const EmptyListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.images.empty.image(),
          const SizedBox(height: 32),
          Text(
            'Your List is Empty',
            style: AppStyle.materialTextStyle.titleLarge?.copyWith(
                color: AppColor.primary500, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 16),
          const Text(
            'It seems that you haven\'t added any anime to the list',
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
