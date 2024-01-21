import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wibupedia/modules/my_list/controller/controller.dart';

import '../../widgets/widgets.dart';
import 'detail_anime.dart';
import 'widgets/widgets.dart';

@RoutePage()
class DetailAnimePage extends StatefulWidget {
  const DetailAnimePage({
    super.key,
    @QueryParam('title-anime') this.titleAnime,
    @QueryParam('anime-url') this.animeUrl,
  });

  final String? titleAnime;
  final String? animeUrl;

  @override
  State<DetailAnimePage> createState() => _DetailAnimePageState();
}

class _DetailAnimePageState extends State<DetailAnimePage> {
  late final DetailAnimeCubit _detailAnimeCubit;
  late final BookmakrsCubit _bookmakrsCubit;

  @override
  void initState() {
    super.initState();
    _detailAnimeCubit = DetailAnimeCubit.create(widget.titleAnime ?? '');
    _bookmakrsCubit = BookmakrsCubit.create();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: _detailAnimeCubit),
        BlocProvider.value(value: _bookmakrsCubit),
      ],
      child: Scaffold(
        body: BlocBuilder<DetailAnimeCubit, DetailAnimeState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const SizedBox(),
              loading: () => LoadingWidget.loadingWidget(),
              success: (anime) => SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _thumbnailAnimeWidget(anime.animeDetail?.thumb ?? ''),
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InformationAnimeWidget(
                            anime: anime,
                            animeUrl: widget.animeUrl ?? '',
                            endpointAnime: widget.titleAnime ?? '',
                          ),
                          EpisodeAnimeWidget(anime: anime),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Stack _thumbnailAnimeWidget(String thumbnail) {
    return Stack(
      children: [
        SizedBox(
          height: 320,
          width: double.infinity,
          child: Image.network(thumbnail, fit: BoxFit.cover),
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

  @override
  void dispose() {
    _detailAnimeCubit.close();
    _bookmakrsCubit.close();
    super.dispose();
  }
}
