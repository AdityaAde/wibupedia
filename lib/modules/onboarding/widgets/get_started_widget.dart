import 'package:flutter/material.dart';

import '../../../component/theme/theme.dart';

class GetstartedWidget extends StatelessWidget {
  const GetstartedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Welcome to Wibupedia',
              style: AppStyle.materialTextStyle.headlineMedium,
            ),
            const SizedBox(height: 24),
            Text(
              'The best streaming anime app of the century to entertain you every day',
              style: AppStyle.materialTextStyle.bodyLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Get Started'),
            ),
            const SizedBox(height: 48),
          ],
        ),
      ),
    );
  }
}
