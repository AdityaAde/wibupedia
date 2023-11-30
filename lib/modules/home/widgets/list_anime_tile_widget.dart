import 'package:flutter/material.dart';

import '../../../component/theme/theme.dart';
import '../../../widgets/widgets.dart';

class ListAnimeTileWidget extends StatelessWidget {
  const ListAnimeTileWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: AppStyle.materialTextStyle.titleLarge
                    ?.copyWith(fontWeight: FontWeight.w700),
              ),
              const Text('See All',
                  style: TextStyle(color: AppColor.primary500)),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: ListView.separated(
              separatorBuilder: (_, __) => const SizedBox(width: 8),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) => Container(
                width: 150,
                decoration: const BoxDecoration(
                  color: AppColor.dark2,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: const ImageCachedWidget(
                  url:
                      'https://image.api.playstation.com/vulcan/ap/rnd/202106/1704/2ZfAUG5CTXdM34S1OhmMW1zF.jpg',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
