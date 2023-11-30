import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../modules.dart';
import 'widgets/widgets.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeadlineHomeWidget(),
            const SizedBox(height: 24),
            BlocBuilder<OngoingCubit, OngoingState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SizedBox(),
                  loading: () => const ListAnimeTileWidget(
                    title: 'On Going',
                    isLoading: true,
                  ),
                  success: (anime) => ListAnimeTileWidget(
                    title: 'On Going',
                    ongoingAnime: anime,
                  ),
                  error: (err) => Center(
                    child: Text('Something went wrong $err'),
                  ),
                );
              },
            ),
            const SizedBox(height: 32),
            BlocBuilder<CompletedCubit, CompletedState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const SizedBox(),
                  loading: () => const ListAnimeTileWidget(
                    title: 'Anime Completed',
                    isLoading: true,
                  ),
                  success: (anime) => ListAnimeTileWidget(
                    title: 'Anime Completed',
                    completedAnime: anime,
                  ),
                  error: (err) => Center(
                    child: Text('Something went wrong $err'),
                  ),
                );
              },
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
