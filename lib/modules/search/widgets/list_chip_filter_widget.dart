import 'package:flutter/material.dart';

import '../../../component/theme/theme.dart';

class ListChipFilterWidget extends StatelessWidget {
  const ListChipFilterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 40,
        child: ListView.separated(
          padding: const EdgeInsets.only(left: 26),
          separatorBuilder: (context, index) => const SizedBox(width: 12),
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) => Container(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            decoration: const BoxDecoration(
                color: AppColor.primary500,
                borderRadius: BorderRadius.all(Radius.circular(24))),
            child: const Center(
              child: Text(
                'Action',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
