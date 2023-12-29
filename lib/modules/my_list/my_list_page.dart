import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../component/theme/theme.dart';
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
      body: const Padding(
        padding: EdgeInsets.all(24.0),
        child: EmptyListWidget(),
      ),
    );
  }
}
