import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../component/component.dart';
import '../../component/route/routers.gr.dart';
import '../../component/theme/theme.dart';
import '../../gen/assets.gen.dart';
import '../modules.dart';
import '../my_list/controller/controller.dart';

export 'base_page.dart';

@RoutePage()
class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> with WidgetsBindingObserver {
  late final OngoingCubit _ongoingCubit;
  late final CompletedCubit _completedCubit;
  late final SearchAnimeCubit _searchAnimeCubit;
  late final BookmakrsCubit _bookmakrsCubit;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _ongoingCubit = OngoingCubit.create();
    _completedCubit = CompletedCubit.create();
    _searchAnimeCubit = getIt.get<SearchAnimeCubit>();
    _bookmakrsCubit = BookmakrsCubit.create();
  }

  @override
  Widget build(BuildContext contex) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: _ongoingCubit),
        BlocProvider.value(value: _completedCubit),
        BlocProvider.value(value: _searchAnimeCubit),
        BlocProvider.value(value: _bookmakrsCubit),
      ],
      child: AutoTabsScaffold(
        routes: const [
          HomeRoute(),
          SearchRoute(),
          MyListRoute(),
          ProfileRoute(),
        ],
        bottomNavigationBuilder: (context, tabRouter) => BottomNavigationBar(
          backgroundColor: AppColor.dark1,
          type: BottomNavigationBarType.fixed,
          currentIndex: tabRouter.activeIndex,
          selectedItemColor: const Color(0xFF4E73F8),
          unselectedItemColor: const Color(0xff757d8a),
          selectedFontSize: 12,
          unselectedFontSize: 12,
          onTap: (index) {
            tabRouter.setActiveIndex(index);
            if (index == 2) _bookmakrsCubit.getBookmarks();
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: '',
              icon: Assets.icons.homeIcon.image(scale: 1.1),
              activeIcon:
                  Assets.icons.homeIcon.image(color: AppColor.primary500),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Assets.icons.searchIcon
                  .image(scale: 1.3, color: AppColor.ink03),
              activeIcon: Assets.icons.searchIcon.image(
                color: AppColor.primary500,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Assets.icons.bookmarksIcon.image(scale: 1.2),
              activeIcon: Assets.icons.bookmarksIcon.image(
                color: AppColor.primary500,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Assets.icons.personIcon.image(scale: 1.2),
              activeIcon: Assets.icons.personIcon.image(
                color: AppColor.primary500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _ongoingCubit.close();
    _completedCubit.close();
    _searchAnimeCubit.close();
    _bookmakrsCubit.close();
    super.dispose();
  }
}
