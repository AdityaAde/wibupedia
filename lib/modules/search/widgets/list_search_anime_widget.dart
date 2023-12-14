import 'package:flutter/material.dart';

import '../../../component/theme/theme.dart';
import '../../../widgets/widgets.dart';

class ListSearchAnimeWidget extends StatelessWidget {
  const ListSearchAnimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          height: 111,
          child: Row(
            children: [
              const Expanded(
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: ImageCachedWidget(
                    url:
                        'https://image.api.playstation.com/vulcan/ap/rnd/202106/1704/JzL1NLQvok7Pghe9W5PP2XNV.png',
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                flex: 2,
                child: Text(
                  'Demon Slayer: Entertainment Distri Arc',
                  style: AppStyle.materialTextStyle.titleMedium
                      ?.copyWith(fontWeight: FontWeight.w700),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
        ),
        childCount: 10,
      ),
    );
  }
}
