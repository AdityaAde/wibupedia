import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../component/theme/theme.dart';
import 'controller/controller.dart';
import 'widgets/widgets.dart';

@RoutePage()
class MyListPage extends StatefulWidget {
  const MyListPage({super.key});

  @override
  State<MyListPage> createState() => _MyListPageState();
}

class _MyListPageState extends State<MyListPage> {
  late final BookmakrsCubit _bookmakrsCubit;

  @override
  void initState() {
    super.initState();
    _bookmakrsCubit = BookmakrsCubit.create();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bookmakrsCubit,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'My List',
            style: AppStyle.materialTextStyle.titleLarge,
          ),
        ),
        body: const MylistWidget(),
      ),
    );
  }

  @override
  void dispose() {
    _bookmakrsCubit.close();
    super.dispose();
  }
}
