import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wibupedia/component/route/routers.gr.dart';

import '../../../gen/assets.gen.dart';
import '../../../widgets/widgets.dart';
import '../controller/controller.dart';

class SearchbarAnimeWidget extends StatefulWidget {
  const SearchbarAnimeWidget({super.key});

  @override
  State<SearchbarAnimeWidget> createState() => _SearchbarAnimeWidgetState();
}

class _SearchbarAnimeWidgetState extends State<SearchbarAnimeWidget> {
  late final TextEditingController _searchAnimeController;

  @override
  void initState() {
    super.initState();
    _searchAnimeController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final searchAnimeCubit = context.read<SearchAnimeCubit>();
    return SliverAppBar(
      title: TextfieldElipticalWidget(
        controller: _searchAnimeController,
        autofocus: true,
        hint: 'Search Anime',
        suffixIcon: InkWell(
            onTap: () {
              context.read<GenreAnimeCubit>().getGenresAnime();
              context.pushRoute(const SearchFilterRoute());
            },
            child: Assets.icons.filterIcon.image()),
        onChanged: (value) => searchAnimeCubit.searchAnime(value),
      ),
      expandedHeight: 80,
    );
  }

  @override
  void dispose() {
    _searchAnimeController.dispose();
    super.dispose();
  }
}
