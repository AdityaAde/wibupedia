import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../component/route/routers.gr.dart';
import '../../../component/theme/theme.dart';
import '../../../models/models.dart';
import '../../../widgets/widgets.dart';

class AnimeTileItem extends StatelessWidget {
  const AnimeTileItem({super.key, this.anime});

  final AnimeModels? anime;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: GridTile(
        child: Stack(
          children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30.0)),
              height: double.infinity,
              width: double.infinity,
              child: ImageCachedWidget(url: anime?.thumb),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 12, left: 8),
                child: Text(
                  anime?.title ?? '',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppStyle.materialTextStyle.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ],
        ),
      ),
      onTap: () => context.pushRoute(
        DetailAnimeRoute(
          titleAnime: anime?.endpointAnime ?? '',
          animeUrl: anime?.endpoint ?? '',
        ),
      ),
    );
  }
}
