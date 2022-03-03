// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../screens/details/details.dart';
import '../screens/details/details_binding.dart';
import '../screens/home/home.dart';
import '../screens/home/home_binding.dart';

class AppRouter {
  static const HOME = '/home';
  static const DETAILS = '/details';

  Route? generateRoutes(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case HOME:
        return GetPageRoute(
            routeName: HOME, page: () => const Home(), binding: HomeBinding());
      case DETAILS:
        final params = args as Map<String, dynamic>;
        return GetPageRoute(
            routeName: DETAILS,
            page: () => Details(title: params['title'], countries: params['countries'], countryCodes: params['codes'], index: params['index'],),
            binding: DetailsBinding());
    }
    return null;
  }
}
