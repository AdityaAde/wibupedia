import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../modules.dart';
import 'widgets/widgets.dart';

@RoutePage()
class DetailListAnimePage extends StatelessWidget {
  const DetailListAnimePage({
    super.key,
    @PathParam('title') required this.title,
    @QueryParam('isOngoingAnime') this.isOngoingAnime,
    @QueryParam('ongoingCubit') this.ongoingCubit,
    @QueryParam('completedCubit') this.completedCubit,
  });

  final String title;
  final bool? isOngoingAnime;
  final OngoingCubit? ongoingCubit;
  final CompletedCubit? completedCubit;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: ongoingCubit!),
        BlocProvider.value(value: completedCubit!)
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: isOngoingAnime ?? false
            ? BlocBuilder<OngoingCubit, OngoingState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const SizedBox(),
                    success: (anime) => ListAnimeWidget(ongoingAnime: anime),
                  );
                },
              )
            : BlocBuilder<CompletedCubit, CompletedState>(
                builder: (context, state) {
                  return state.maybeWhen(
                      orElse: () => const SizedBox(),
                      success: (anime) =>
                          ListAnimeWidget(completedAnime: anime));
                },
              ),
      ),
    );
  }
}
