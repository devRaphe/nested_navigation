// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../UI/home/home_view.dart';
import '../UI/nav/nav_view.dart';
import '../UI/notes/notes_view.dart';
import '../UI/privacy/privacy_view.dart';
import '../UI/profile/profile_view.dart';
import '../UI/settings/setting_view.dart';
import '../UI/todo/todo_view.dart';

class Routes {
  static const String navView = '/';
  static const String homeView = '/home-view';
  static const String settingsView = '/settings-view';
  static const all = <String>{
    navView,
    homeView,
    settingsView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.navView, page: NavView),
    RouteDef(
      Routes.homeView,
      page: HomeView,
      generator: HomeViewRouter(),
    ),
    RouteDef(
      Routes.settingsView,
      page: SettingsView,
      generator: SettingsViewRouter(),
    ),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    NavView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const NavView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const HomeView(),
        settings: data,
      );
    },
    SettingsView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const SettingsView(),
        settings: data,
      );
    },
  };
}

class HomeViewRoutes {
  static const String todoView = '/todo-view';
  static const String notesView = '/notes-view';
  static const all = <String>{
    todoView,
    notesView,
  };
}

class HomeViewRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(HomeViewRoutes.todoView, page: TodoView),
    RouteDef(HomeViewRoutes.notesView, page: NotesView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    TodoView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const TodoView(),
        settings: data,
      );
    },
    NotesView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const NotesView(),
        settings: data,
      );
    },
  };
}

class SettingsViewRoutes {
  static const String profileView = '/profile-view';
  static const String privacyView = '/privacy-view';
  static const all = <String>{
    profileView,
    privacyView,
  };
}

class SettingsViewRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(SettingsViewRoutes.profileView, page: ProfileView),
    RouteDef(SettingsViewRoutes.privacyView, page: PrivacyView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    ProfileView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const ProfileView(),
        settings: data,
      );
    },
    PrivacyView: (data) {
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const PrivacyView(),
        settings: data,
      );
    },
  };
}
