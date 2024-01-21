import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wibupedia/modules/my_list/controller/controller.dart';

import '../../../component/route/routers.gr.dart';
import '../../../component/theme/theme.dart';
import '../../../models/models.dart';
import '../../../widgets/widgets.dart';

class MylistWidget extends StatelessWidget {
  const MylistWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: BlocBuilder<BookmakrsCubit, BookmakrsState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox(),
            loading: () => LoadingWidget.loadingWidget(),
            success: (bookmarks) => ListView.separated(
              itemCount: bookmarks.length,
              separatorBuilder: (context, index) => const SizedBox(height: 16),
              itemBuilder: (context, index) =>
                  _AnimeTileWidget(bookmarks: bookmarks[index]),
            ),
            error: (err) => Center(child: Text('Error $err')),
          );
        },
      ),
    );
  }
}

class _AnimeTileWidget extends StatelessWidget {
  final BookmarksModels bookmarks;

  const _AnimeTileWidget({required this.bookmarks});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushRoute(
        DetailAnimeRoute(
          titleAnime: bookmarks.endpoint,
          animeUrl: bookmarks.endpoint,
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              child: SizedBox(
                width: double.infinity,
                height: 113,
                child: ImageCachedWidget(
                  url: bookmarks.thumbnail,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        bookmarks.name ?? '',
                        maxLines: 2,
                        overflow: TextOverflow.visible,
                        style: AppStyle.materialTextStyle.bodyLarge
                            ?.copyWith(fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 12),
                      Text('Status: ${bookmarks.status}',
                          style: AppStyle.materialTextStyle.bodyMedium),
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete_outline,
                        color: AppColor.utilityDangerError,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
