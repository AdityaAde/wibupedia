import 'package:auto_route/auto_route.dart';
import 'package:choice/choice.dart';
import 'package:flutter/material.dart';
import 'package:wibupedia/component/theme/theme.dart';

import '../../../widgets/widgets.dart';

@RoutePage()
class SearchFilterPage extends StatefulWidget {
  const SearchFilterPage({super.key});

  @override
  State<SearchFilterPage> createState() => _SearchFilterPageState();
}

class _SearchFilterPageState extends State<SearchFilterPage> {
  List<String> choices = [
    'News',
    'Entertainment',
    'Politics',
    'Automotive',
    'Sports',
    'Education',
    'Fashion',
    'Travel',
    'Food',
    'Tech',
    'Science',
    'Arts'
  ];
  List<String> selectedValue = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Choose Your Interest')),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  'Choose your interests and get the best anime recommendations. Don\'t worry, you can always change it later.',
                  style: AppStyle.materialTextStyle.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 24),
                InlineChoice<String>.multiple(
                  clearable: true,
                  value: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue.clear();
                      selectedValue.addAll(value);
                    });
                  },
                  itemCount: choices.length,
                  itemBuilder: (state, i) {
                    return ChoiceChip(
                      showCheckmark: false,
                      selected: state.selected(choices[i]),
                      onSelected: state.onSelected(choices[i]),
                      label: Text(choices[i]),
                      selectedColor: Colors.green,
                    );
                  },
                  listBuilder: ChoiceList.createWrapped(
                    spacing: 10,
                    runSpacing: 10,
                  ),
                ),
              ],
            ),
            ButtonWidget.button(
              'Continue',
              onTap: () {},
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
