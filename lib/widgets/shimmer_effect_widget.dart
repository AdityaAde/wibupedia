import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../component/theme/theme.dart';

class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColor.dark2,
      highlightColor: AppColor.dark3,
      child: child,
    );
  }
}
