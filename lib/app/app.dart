import 'package:flutter/material.dart';
import 'package:nested_navigation/UI/nav/nav_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../UI/home/home_view.dart';
import '../UI/notes/notes_view.dart';
import '../UI/privacy/privacy_view.dart';
import '../UI/profile/profile_view.dart';
import '../UI/settings/setting_view.dart';
import '../UI/todo/todo_view.dart';

@StackedApp(
  routes: [
    CustomRoute(page: NavView, initial: true),
    CustomRoute(
      page: HomeView,
      children: [
        CustomRoute(page: TodoView),
        CustomRoute(page: NotesView),
      ],
    ),
    CustomRoute(
      page: SettingsView,
      children: [
        CustomRoute(page: ProfileView),
        CustomRoute(page: PrivacyView),
      ],
    ),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
  ],
  logger: StackedLogger(),
)
class AppSetup {}
