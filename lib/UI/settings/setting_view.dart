import 'package:flutter/material.dart';
import 'package:nested_navigation/app/app.router.dart';
import 'package:stacked/stacked.dart';

import 'setting_viewmodel.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SettingsViewModel>.reactive(
      viewModelBuilder: () => SettingsViewModel(),
      builder: (
        BuildContext context,
        SettingsViewModel model,
        Widget? child,
      ) {
        return ExtendedNavigator(
          router: SettingsViewRouter(),
          navigatorKey: model.settingsViewNavigatorKey,
          initialRoute: SettingsViewRoutes.profileView,
        );
      },
    );
  }
}
