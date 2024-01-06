import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../component/theme/theme.dart';
import '../../../gen/assets.gen.dart';
import '../../../models/models.dart';

class InformationAnimeWidget extends StatelessWidget {
  const InformationAnimeWidget({
    super.key,
    required this.anime,
    required this.animeUrl,
  });

  final DetailAnimeModels anime;
  final String animeUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          anime.animeDetail?.title ?? '',
          style: AppStyle.materialTextStyle.headlineMedium,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Assets.icons.starIcon.image(),
            const SizedBox(width: 8),
            Text(anime.animeDetail?.scoreAnime ?? '',
                style: AppStyle.materialTextStyle.bodyLarge
                    ?.copyWith(color: AppColor.primary500)),
            const SizedBox(width: 12),
            const Icon(Icons.chevron_right),
            const SizedBox(width: 12),
            _boxInformationAnime(anime.animeDetail?.statusAnime ?? ''),
          ],
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () => launchUrl(Uri.parse(animeUrl)),
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
        const SizedBox(height: 20),
        Text(
          anime.animeDetail?.genreAnime ?? '',
          overflow: TextOverflow.ellipsis,
          style: AppStyle.materialTextStyle.bodyMedium
              ?.copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 4),
        Text(
          // ignore: prefer_is_empty
          anime.animeDetail!.sinopsis!.length != 0
              ? anime.animeDetail!.sinopsis![0]
              : 'Sinopsis: -',
          style: AppStyle.materialTextStyle.bodyMedium
              ?.copyWith(fontWeight: FontWeight.w300),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 22),
      ],
    );
  }

  Container _boxInformationAnime(String value) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: AppColor.primary500),
      ),
      child: Text(value),
    );
  }
}
