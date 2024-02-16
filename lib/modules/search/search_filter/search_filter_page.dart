import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widgets/widgets.dart';
import '../../modules.dart';
import 'widgets/widgets.dart';

@RoutePage()
class SearchFilterPage extends StatefulWidget {
  const SearchFilterPage({super.key});

  @override
  State<SearchFilterPage> createState() => _SearchFilterPageState();
}

class _SearchFilterPageState extends State<SearchFilterPage> {
  late final GenreAnimeCubit _genreAnimeCubit;

  @override
  void initState() {
    super.initState();
    _genreAnimeCubit = GenreAnimeCubit.create();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _genreAnimeCubit,
      child: Scaffold(
        appBar: AppBar(title: const Text('Choose Your Interest')),
        body: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
          child: BlocBuilder<GenreAnimeCubit, GenreAnimeState>(
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const SizedBox(),
                loading: () => Center(child: LoadingWidget.loadingWidget()),
                success: (genres) => SingleChildScrollView(
                  child: FilterChipWidget(genres: genres),
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
            onTap: () {},
            height: 50,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _genreAnimeCubit.close();
    super.dispose();
  }
}
