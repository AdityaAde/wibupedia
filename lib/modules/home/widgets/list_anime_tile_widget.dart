import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../component/route/routers.gr.dart';
import '../../../component/theme/theme.dart';
import '../../../models/models.dart';
import '../../../widgets/widgets.dart';

class ListAnimeTileWidget extends StatelessWidget {
  const ListAnimeTileWidget({
    super.key,
    required this.title,
    this.isLoading = false,
    this.anime,
    this.onTapSeeAll,
  });

  final String title;
  final bool isLoading;
  final List<AnimeModels>? anime;
  final VoidCallback? onTapSeeAll;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: AppStyle.materialTextStyle.titleLarge
                    ?.copyWith(fontWeight: FontWeight.w700),
              ),
              InkWell(
                onTap: onTapSeeAll,
                child: const Text(
                  'See All',
                  style: TextStyle(color: AppColor.primary500),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: isLoading
                ? ListView.separated(
                    separatorBuilder: (_, __) => const SizedBox(width: 8),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) => const SizedBox(
                      width: 150,
                      child: ShimmerWidget(
                        child: ColoredBox(color: AppColor.dark2),
                      ),
                    ),
                  )
                : ListView.separated(
                    separatorBuilder: (_, __) => const SizedBox(width: 12),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return InkWell(
                        child: Container(
                          width: 150,
                          decoration: const BoxDecoration(
                            color: AppColor.dark2,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                          child: ImageCachedWidget(url: anime?[index].thumb),
                        ),
                        onTap: () => context.pushRoute(
                          DetailAnimeRoute(
                            titleAnime: anime?[index].endpointAnime,
                            animeUrl: anime?[index].endpoint,
                          ),
                        ),
                      );
                    },
                  ),
          )
        ],
      ),
    );
  }
}
