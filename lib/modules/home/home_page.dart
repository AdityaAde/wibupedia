import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeadlineHomeWidget(),
            SizedBox(height: 24),
            ListAnimeTileWidget(title: 'On Going'),
            SizedBox(height: 18),
            ListAnimeTileWidget(title: 'Anime Completed'),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
