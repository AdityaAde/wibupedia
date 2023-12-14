import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';
import '../../../widgets/widgets.dart';

class SearchbarAnimeWidget extends StatelessWidget {
  const SearchbarAnimeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: TextfieldElipticalWidget(
        hint: 'Search Anime',
        suffixIcon: Assets.icons.filterIcon.image(),
      ),
      expandedHeight: 80,
    );
  }
}
