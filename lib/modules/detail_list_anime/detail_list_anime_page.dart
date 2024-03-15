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
  late final PagingController<int, AnimeModels> _pagingController;
  late final ValueNotifier<int> _page;

  @override
  void initState() {
    super.initState();
    _page = ValueNotifier<int>(1);
    _pagingController = PagingController(firstPageKey: 1);
  }

  @override
  void didChangeDependencies() {
    onPagingListen();
    super.didChangeDependencies();
  }

  void onPagingListen() {
    _pagingController.addPageRequestListener((pageKey) {
      widget.isOngoingAnime ?? false
          ? widget.ongoingCubit?.getOngoingAnime(page: _page.value.toString())
          : widget.completedCubit
              ?.getCompletedAnime(page: _page.value.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    final ongoingCubit = widget.ongoingCubit;
    final completedCubit = widget.completedCubit;
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: widget.ongoingCubit!),
        BlocProvider.value(value: widget.completedCubit!)
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: widget.isOngoingAnime ?? false
            ? BlocListener<OngoingCubit, OngoingState>(
                listener: (context, state) {
                  state.maybeWhen(
                    orElse: () => null,
                    success: (anime) {
                      _pagingController.itemList = anime;
                      _pagingController.nextPageKey =
                          ongoingCubit!.isFullyLoaded
                              ? null
                              : _page.value = _page.value + 1;
                    },
                    error: (err) => _pagingController.error = err,
                  );
                },
                child: ListAnimeWidget(pagingOngoing: _pagingController),
              )
            : BlocListener<CompletedCubit, CompletedState>(
                listener: (context, state) {
                  state.maybeWhen(
                    orElse: () => null,
                    success: (anime) {
                      _pagingController.itemList = anime;
                      _pagingController.nextPageKey =
                          completedCubit!.isFullyLoaded
                              ? null
                              : _page.value = _page.value + 1;
                    },
                    error: (err) => _pagingController.error = err,
                  );
                },
                child: ListAnimeWidget(
                  pagingOngoing: _pagingController,
                ),
              ),
      ),
    );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}
