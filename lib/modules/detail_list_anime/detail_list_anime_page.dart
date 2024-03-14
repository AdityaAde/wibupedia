import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../models/models.dart';
import '../modules.dart';
import 'widgets/widgets.dart';

@RoutePage()
class DetailListAnimePage extends StatefulWidget {
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
  State<DetailListAnimePage> createState() => _DetailListAnimePageState();
}

class _DetailListAnimePageState extends State<DetailListAnimePage> {
  late final PagingController<int, AnimeModels> _pagingOngoingController;
  late final ValueNotifier<int> _pageOngoing;

  @override
  void initState() {
    super.initState();
    _pageOngoing = ValueNotifier<int>(1);
    _pagingOngoingController = PagingController(firstPageKey: 0);
  }

  @override
  void didChangeDependencies() {
    onPagingListen();
    super.didChangeDependencies();
  }

  void onPagingListen() {
    _pagingOngoingController.addPageRequestListener((pageKey) => widget
        .ongoingCubit
        ?.getOngoingAnime(page: _pageOngoing.value.toString()));
  }

  @override
  Widget build(BuildContext context) {
    final ongoingCubit = widget.ongoingCubit;
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: widget.ongoingCubit!),
        BlocProvider.value(value: widget.completedCubit!)
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: BlocListener<OngoingCubit, OngoingState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () => null,
              success: (anime) {
                _pagingOngoingController.itemList = anime;
                _pagingOngoingController.nextPageKey =
                    ongoingCubit!.isFullyLoaded
                        ? null
                        : _pageOngoing.value = _pageOngoing.value + 1;
              },
              error: (err) => _pagingOngoingController.error = err,
            );
          },
          child: ListAnimeWidget(pagingOngoing: _pagingOngoingController),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pagingOngoingController.dispose();
    super.dispose();
  }
}
