import 'package:nested_navigation/app/router_ids.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.router.dart';
import '../../app/app.locator.dart';

class TodoViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  void navigateToNotes() {
    _navigationService.navigateTo(HomeViewRoutes.notesView,
        id: homeViewRouteId);
  }
}
