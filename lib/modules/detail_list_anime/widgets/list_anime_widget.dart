import 'package:flutter/material.dart';
import 'package:wibupedia/models/models.dart';

import 'anime_tile_item_widget.dart';

class ListAnimeWidget extends StatelessWidget {
  const ListAnimeWidget({
    super.key,
    this.ongoingAnime,
    this.completedAnime,
  });

  final OngoingModels? ongoingAnime;
  final CompletedModels? completedAnime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
        ),
        itemCount:
            ongoingAnime?.ongoing?.length ?? completedAnime?.completed?.length,
        itemBuilder: (context, index) {
          return AnimeTileItem(
            anime: ongoingAnime?.ongoing?[index] ??
                completedAnime?.completed?[index],
          );
        },
      ),
    );
  }
}
