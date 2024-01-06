import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../component/route/routers.gr.dart';
import '../../../component/theme/theme.dart';
import '../../../widgets/widgets.dart';
import '../controller/controller.dart';

class ListSearchAnimeWidget extends StatelessWidget {
  const ListSearchAnimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchAnimeCubit, SearchAnimeState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SliverToBoxAdapter(child: SizedBox()),
          loading: () => SliverToBoxAdapter(
              child: Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 2 - 200),
            child: LoadingWidget.loadingWidget(),
          )),
          success: (anime) => SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => InkWell(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  height: 111,
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: ImageCachedWidget(
                            url: anime.search?[index].thumb ?? '',
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        flex: 2,
                        child: Text(
                          anime.search?[index].title ?? '',
                          style: AppStyle.materialTextStyle.titleMedium
                              ?.copyWith(fontWeight: FontWeight.w700),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                ),
                onTap: () => context.pushRoute(
                  DetailAnimeRoute(
                    titleAnime: anime.search?[index].endpointAnime ?? '',
                    animeUrl: anime.search?[index].endpoint ?? '',
                  ),
                ),
              ),
              childCount: anime.search?.length,
            ),
          ),
          error: (err) => const SliverToBoxAdapter(child: SizedBox()),
        );
      },
    );
  }
}
