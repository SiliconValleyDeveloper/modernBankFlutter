import 'package:get/get.dart';

import '../modules/catalog/bindings/catalog_binding.dart';
import '../modules/catalog/views/catalog_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/more/bindings/more_binding.dart';
import '../modules/more/views/more_view.dart';
import '../modules/notification/bindings/notification_binding.dart';
import '../modules/notification/views/notification_view.dart';
import '../modules/rootapp/bindings/rootapp_binding.dart';
import '../modules/rootapp/views/rootapp_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ROOTAPP;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ROOTAPP,
      page: () => RootappView(),
      binding: RootappBinding(),
    ),
    GetPage(
      name: _Paths.CATALOG,
      page: () => CatalogView(),
      binding: CatalogBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => const NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.MORE,
      page: () => const MoreView(),
      binding: MoreBinding(),
    ),
  ];
}
