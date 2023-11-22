import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

export 'base_page.dart';

@RoutePage()
class BasePage extends StatelessWidget {
  const BasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Base')),
    );
  }
}
