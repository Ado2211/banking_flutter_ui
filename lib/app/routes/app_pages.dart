// ignore_for_file: constant_identifier_names

import 'package:banking_flutter_ui/app/modules/home/bindings/home_binding.dart';
import 'package:banking_flutter_ui/app/modules/home/views/home_view.dart';

import 'package:get/get.dart';

part 'app_routes.dart';

abstract class AppPages {
  const AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
