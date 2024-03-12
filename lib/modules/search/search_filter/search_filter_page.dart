import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../component/component.dart';
import '../../../widgets/widgets.dart';
import '../../modules.dart';
import 'widgets/widgets.dart';

@RoutePage()
class SearchFilterPage extends StatelessWidget {
  const SearchFilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final genreAnimeCubit = getIt<GenreAnimeCubit>();
    final searchAnimeCubit = getIt<SearchAnimeCubit>();
    return BlocProvider.value(
      value: genreAnimeCubit,
      child: PopScope(
        canPop: false,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Choose Your Interest'),
            centerTitle: true,
            leading: const SizedBox(),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
            child: BlocConsumer<GenreAnimeCubit, GenreAnimeState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () {},
                  genres: (_) => Navigator.pop(context),
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SizedBox(),
                  loading: () => Center(child: LoadingWidget.loadingWidget()),
                  success: (genres) => SingleChildScrollView(
                    child: FilterChipWidget(
                      genres: genres,
                      genresFilter: genreAnimeCubit.choosedGenre,
                    ),
                  ),
                  error: (err) => Center(child: Text(err)),
                );
              },
            ),
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: ButtonWidget.button(
              'Continue',
              onTap: () {
                genreAnimeCubit.setFilterGenre(
                  genreAnimeCubit.choosedGenre,
                );
                searchAnimeCubit.searchAnimeByGenre(
                  genreAnimeCubit.choosedGenre.join(','),
                );
              },
              height: 50,
            ),
          ),
        ),
      ),
    );
  }
}
