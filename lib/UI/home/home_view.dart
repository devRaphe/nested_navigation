// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:nested_navigation/app/app.router.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (
        BuildContext context,
        HomeViewModel model,
        Widget? child,
      ) {
        return ExtendedNavigator(
          router: HomeViewRouter(),
          navigatorKey: model.homeViewNavigatorKey,
          initialRoute: HomeViewRoutes.todoView,
        );
      },
    );
  }
}

class _HomeWrapper extends ViewModelWidget<HomeViewModel> {
  final int index;
  final GlobalKey<NavigatorState>? navigatorkey;
  final String initialRoute;
  const _HomeWrapper({
    Key? key,
    required this.index,
    required this.navigatorkey,
    required this.initialRoute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Offstage(
      offstage: viewModel.currentIndex != index,
      child: PageTransitionSwitcher(
        duration: const Duration(milliseconds: 300),
        transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
            FadeThroughTransition(
          animation: primaryAnimation,
          secondaryAnimation: secondaryAnimation,
          child: child,
        ),
        child: ExtendedNavigator(
          router: HomeViewRouter(),
          navigatorKey: navigatorkey,
          initialRoute: initialRoute,
        ),
      ),
    );
  }
}
