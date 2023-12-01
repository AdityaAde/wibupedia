import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../component/theme/theme.dart';

class EpisodeAnimeWidget extends StatelessWidget {
  const EpisodeAnimeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Episodes',
            style: AppStyle.materialTextStyle.titleLarge
                ?.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 24),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  border: Border.all(color: AppColor.dark3),
                  borderRadius: BorderRadius.circular(6)),
              child: ListView.separated(
                padding: EdgeInsets.zero,
                itemCount: 40,
                dragStartBehavior: DragStartBehavior.down,
                separatorBuilder: (_, __) => const SizedBox(height: 12),
                itemBuilder: (context, index) => const Text(
                  'Chainsaw Man Episode 12 (End) Subtitle Indonesia',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
