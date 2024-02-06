import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../component/theme/theme.dart';
import '../../modules.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final user = context.read<AuthenticationCubit>();
    return Row(
      children: [
        Stack(
          children: [
            SizedBox(
              height: 100,
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 42,
                backgroundImage: NetworkImage(user.user?.photoURL ?? ''),
              ),
            ),
            const Positioned(
              bottom: 12,
              right: 0,
              child: CircleAvatar(
                backgroundColor: AppColor.primary500,
                radius: 14,
                child: Icon(
                  Icons.edit,
                  size: 18,
                  color: AppColor.ink06,
                ),
              ),
            )
          ],
        ),
        const SizedBox(width: 24),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(user.user?.displayName ?? 'Guest',
                style: AppStyle.materialTextStyle.titleLarge
                    ?.copyWith(fontWeight: FontWeight.w700)),
            const SizedBox(height: 4),
            Text(user.user?.email ?? '-'),
          ],
        ),
      ],
    );
  }
}
