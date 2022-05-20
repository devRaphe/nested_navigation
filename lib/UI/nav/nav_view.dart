import 'package:flutter/material.dart';
import 'package:nested_navigation/UI/home/home_view.dart';
import 'package:nested_navigation/UI/settings/setting_view.dart';
import 'package:stacked/stacked.dart';

import 'package:animations/animations.dart';

import 'package:nested_navigation/app/app.router.dart';

import 'nav_view_model.dart';

class NavView extends StatelessWidget {
  const NavView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NavViewModel>.reactive(
      viewModelBuilder: () => NavViewModel(),
      builder: (
        BuildContext context,
        NavViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          key: PageStorageKey('unique-keys'),
          body: PageTransitionSwitcher(
            transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
                SharedAxisTransition(
              animation: primaryAnimation,
              secondaryAnimation: secondaryAnimation,
              transitionType: SharedAxisTransitionType.horizontal,
              child: child,
            ),
            child: [HomeView(), SettingsView()][model.currentIndex],
          ),
          bottomNavigationBar: NavigationBar(
            onDestinationSelected: model.setIndex,
            selectedIndex: model.currentIndex,
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
              NavigationDestination(
                  icon: Icon(Icons.settings), label: 'Settings'),
            ],
          ),
        );
      },
    );
  }
}

// class _NavWrapper extends ViewModelWidget<NavViewModel> {
//   final int index;
//   final GlobalKey<NavigatorState>? navigatorkey;
//   final String initialRoute;
//   const _NavWrapper({
//     Key? key,
//     required this.index,
//     required this.navigatorkey,
//     required this.initialRoute,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context, NavViewModel viewModel) {
//     return Offstage(
//       offstage: viewModel.currentIndex != index,
//       child: PageTransitionSwitcher(
//         duration: const Duration(milliseconds: 300),
//         transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
//             FadeThroughTransition(
//           animation: primaryAnimation,
//           secondaryAnimation: secondaryAnimation,
//           child: child,
//         ),
//         child: ExtendedNavigator(
//           router: NavViewRouter(),
//           navigatorKey: navigatorkey,
//           initialRoute: initialRoute,
//         ),
//       ),
//     );
//   }
// }
