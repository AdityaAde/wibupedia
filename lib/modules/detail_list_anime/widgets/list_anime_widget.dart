import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:wibupedia/models/models.dart';

import '../../../widgets/widgets.dart';
import 'anime_tile_item_widget.dart';

class ListAnimeWidget extends StatelessWidget {
  const ListAnimeWidget({
    super.key,
    this.completedAnime,
    this.pagingOngoing,
  });

  final CompletedModels? completedAnime;
  final PagingController<int, AnimeModels>? pagingOngoing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: PagedGridView<int, AnimeModels>(
        pagingController: pagingOngoing!,
        builderDelegate: PagedChildBuilderDelegate(
          itemBuilder: (context, item, index) => AnimeTileItem(anime: item),
          newPageProgressIndicatorBuilder: (context) =>
              LoadingWidget.loadingWidget(),
          firstPageProgressIndicatorBuilder: (context) =>
              LoadingWidget.loadingWidget(),
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
        ),
      ),
    );
  }
}
