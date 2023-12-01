import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../component/theme/theme.dart';
import '../../models/models.dart';
import 'widgets/widgets.dart';

@RoutePage()
class DetailAnimePage extends StatelessWidget {
  const DetailAnimePage({
    super.key,
    @QueryParam('anime') this.anime,
  });

  final AnimeModels? anime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _thumbnailAnimeWidget(context),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InformationAnimeWidget(anime: anime),
                  const EpisodeAnimeWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Stack _thumbnailAnimeWidget(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 320,
          width: double.infinity,
          color: AppColor.dark2,
          child: Image.network(anime?.thumb ?? '', fit: BoxFit.cover),
        ),
        Positioned(
          top: 52,
          child: IconButton(
              onPressed: () => context.popRoute(),
              icon: Icon(Platform.isAndroid
                  ? Icons.arrow_back
                  : Icons.arrow_back_ios)),
        ),
      ],
    );
  }
}
