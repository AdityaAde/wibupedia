import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../component/theme/theme.dart';
import '../../widgets/widgets.dart';
import 'controller/controller.dart';
import 'widgets/widgets.dart';

@RoutePage()
class MyListPage extends StatelessWidget {
  const MyListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My List',
          style: AppStyle.materialTextStyle.titleLarge,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: BlocBuilder<BookmakrsCubit, BookmakrsState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const SizedBox(),
              loading: () => LoadingWidget.loadingWidget(),
              success: (bookmarks) => ListView.separated(
                itemCount: bookmarks.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 16),
                itemBuilder: (context, index) =>
                    AnimeTileWidget(bookmarks: bookmarks[index]),
              ),
              empty: () => const EmptyListWidget(),
              error: (err) => Center(child: Text('Error $err')),
            );
          },
        ),
      ),
    );
  }
}
