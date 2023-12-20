import 'package:flutter/material.dart';

import '../../../component/theme/theme.dart';
import '../../../widgets/widgets.dart';

class AnimeTileItem extends StatelessWidget {
  const AnimeTileItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Stack(
        children: [
          Container(
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(30.0)),
            height: double.infinity,
            width: double.infinity,
            child: const ImageCachedWidget(
                url:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO66uSq_zZSo8cM0KC1agMOfk4flRF_SRtDQzzXeSbuRhh0usC_JNcz_4PgGj2f6Cnxpo&usqp=CAU'),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12, left: 8),
              child: Text(
                'Attack on Titan Final Season Part 2',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppStyle.materialTextStyle.bodyLarge
                    ?.copyWith(fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
