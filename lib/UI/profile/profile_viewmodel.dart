import 'package:nested_navigation/app/app.locator.dart';
import 'package:nested_navigation/app/app.router.dart';
import 'package:nested_navigation/app/router_ids.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ProfileViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void navigateToPrivacy() {
    _navigationService.navigateTo(SettingsViewRoutes.privacyView,
        id: settingsViewRouteId);
  }
}
