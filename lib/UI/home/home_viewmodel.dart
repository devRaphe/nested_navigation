import 'package:nested_navigation/app/app.locator.dart';
import 'package:nested_navigation/app/app.router.dart';
import 'package:nested_navigation/app/router_ids.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends IndexTrackingViewModel {
  final _navigationService = locator<NavigationService>();

  final homeViewNavigatorKey =
      StackedService.nestedNavigationKey(homeViewRouteId);

  void navigateToTodo() {
    _navigationService.navigateTo(HomeViewRoutes.todoView, id: homeViewRouteId);
  }
}
