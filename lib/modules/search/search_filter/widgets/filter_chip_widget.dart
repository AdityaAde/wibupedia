import 'package:choice/choice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wibupedia/models/models.dart';
import 'package:wibupedia/modules/modules.dart';

import '../../../../component/theme/theme.dart';

class FilterChipWidget extends StatefulWidget {
  const FilterChipWidget({super.key, required this.genres});

  final List<GenreModels> genres;

  @override
  State<FilterChipWidget> createState() => _FilterChipWidgetState();
}

class _FilterChipWidgetState extends State<FilterChipWidget> {
  @override
  Widget build(BuildContext context) {
    final genreAnimeCubit = context.read<GenreAnimeCubit>();
    return Column(
      children: [
        Text(
          'Choose your interests and get the best anime recommendations. Don\'t worry, you can always change it later.',
          style: AppStyle.materialTextStyle.bodyLarge
              ?.copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 24),
        InlineChoice<String>.multiple(
          clearable: true,
          value: genreAnimeCubit.choosedGenre,
          onChanged: (value) {
            genreAnimeCubit.setChoosedGenre.clear();
            genreAnimeCubit.setChoosedGenre.addAll(value);
          },
          itemCount: widget.genres.length,
          itemBuilder: (state, i) {
            final choice = widget.genres[i].genre;
            return ChoiceChip(
              showCheckmark: false,
              selected: state.selected(choice ?? ''),
              onSelected: state.onSelected(choice ?? ''),
              label: Text(choice ?? ''),
              selectedColor: Colors.green,
            );
          },
          listBuilder: ChoiceList.createWrapped(
            spacing: 10,
            runSpacing: 10,
          ),
        ),
      ],
    );
  }
}
