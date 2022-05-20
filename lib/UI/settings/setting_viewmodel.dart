import 'package:nested_navigation/app/app.locator.dart';
import 'package:nested_navigation/app/app.router.dart';
import 'package:nested_navigation/app/router_ids.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SettingsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final settingsViewNavigatorKey =
      StackedService.nestedNavigationKey(settingsViewRouteId);

  void navigateToProfile() {
    _navigationService.navigateTo(
      SettingsViewRoutes.profileView,
      id: settingsViewRouteId,
    );
  }
}
