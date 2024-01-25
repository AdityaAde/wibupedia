import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../component/route/routers.gr.dart';
import '../../../component/theme/theme.dart';
import '../../../widgets/widgets.dart';

class HeadlineHomeWidget extends StatelessWidget {
  const HeadlineHomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://otakudesu.media/wp-content/uploads/2023/05/Kimetsu-no-Yaiba-Katanakaji-no-Sato-hen-Sub-Indo.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: 300,
              padding: const EdgeInsets.only(left: 24, bottom: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kimetsu no Yaiba: Yuukaku-hen',
                    style: AppStyle.materialTextStyle.headlineMedium
                        ?.copyWith(fontWeight: FontWeight.w700),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Action, Shounen, Martial Arts, Adventure, ...',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Flexible(
                        child: ElevatedButton(
                          onPressed: () => context.pushRoute(
                            DetailAnimeRoute(
                              titleAnime: 'kimetsu-yaiba-s3-sub-indo/',
                              animeUrl:
                                  'https:/otakudesu.media/anime/kimetsu-yaiba-s3-sub-indo/',
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.play_circle_filled_rounded,
                                  color: AppColor.ink06,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  'Play',
                                  style: AppStyle.materialTextStyle.bodyLarge
                                      ?.copyWith(fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Flexible(
                        child: ButtonWidget.outline(
                          '+  My List   ',
                          height: 48,
                          radius: 100,
                          onTap: () => context.tabsRouter.setActiveIndex(2),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
