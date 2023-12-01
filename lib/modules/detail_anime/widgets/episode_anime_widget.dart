import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../component/theme/theme.dart';
import '../../../models/models.dart';

class EpisodeAnimeWidget extends StatelessWidget {
  const EpisodeAnimeWidget({
    super.key,
    required this.anime,
  });

  final DetailAnimeModels? anime;

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
                itemCount: anime?.episodeList?.length ?? 0,
                separatorBuilder: (_, __) => const SizedBox(height: 12),
                itemBuilder: (context, index) {
                  final content = anime?.episodeAnime[index];
                  return InkWell(
                    child: Text(
                      content?.titleEpisode ?? '',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    onTap: () =>
                        launchUrl(Uri.parse(content?.episodeEndpoint ?? '')),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
