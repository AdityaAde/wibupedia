import 'package:flutter/material.dart';

import '../../../component/theme/theme.dart';
import '../../../widgets/widgets.dart';

class MylistWidget extends StatelessWidget {
  const MylistWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: ListView.separated(
        itemCount: 12,
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemBuilder: (context, index) => const _AnimeTileWidget(),
      ),
    );
  }
}

class _AnimeTileWidget extends StatelessWidget {
  const _AnimeTileWidget();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 113,
      width: double.infinity,
      child: Row(
        children: [
          const Expanded(
            child: SizedBox(
              width: double.infinity,
              height: 113,
              child: ImageCachedWidget(
                url:
                    'https://2.bp.blogspot.com/--Zu8xjagyTc/XU6ATMj0dGI/AAAAAAAAKvk/Bsc_cGo3S709bd-r_xe3yyLnHVzDxMDwwCLcBGAs/w919/dr-stone-characters-senku-ishigami-uhdpaper.com-4K-3.298-wp.thumbnail.jpg',
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Demon Slayer: Kimetsu no Yaiba Entertainm...',
                  maxLines: 2,
                  overflow: TextOverflow.visible,
                  style: AppStyle.materialTextStyle.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 12),
                Text('Status: Ongoing',
                    style: AppStyle.materialTextStyle.bodyMedium),
              ],
            ),
          )
        ],
      ),
    );
  }
}
