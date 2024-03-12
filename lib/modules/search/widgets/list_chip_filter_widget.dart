import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../component/theme/theme.dart';
import '../../modules.dart';

class ListChipFilterWidget extends StatelessWidget {
  const ListChipFilterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<GenreAnimeCubit, GenreAnimeState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox(),
            loading: () => const SizedBox(),
            genres: (genres) => genres != []
                ? Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: SizedBox(
                      height: 40,
                      child: ListView.separated(
                        padding: const EdgeInsets.only(left: 26),
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 12),
                        scrollDirection: Axis.horizontal,
                        itemCount: genres.length,
                        itemBuilder: (context, i) => Container(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          decoration: const BoxDecoration(
                              color: AppColor.primary500,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24))),
                          child: Center(
                            child: Text(
                              genres[i],
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                : const SizedBox(),
          );
        },
      ),
    );
  }
}
