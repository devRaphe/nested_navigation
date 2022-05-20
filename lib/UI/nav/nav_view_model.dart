import 'package:nested_navigation/app/router_ids.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class NavViewModel extends IndexTrackingViewModel {
  final homeViewNavigatorKey =
      StackedService.nestedNavigationKey(homeViewRouteId);
  final settingsViewNavigatorKey =
      StackedService.nestedNavigationKey(settingsViewRouteId);
}
