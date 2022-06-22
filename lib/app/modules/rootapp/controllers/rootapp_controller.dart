import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:modernbank/app/modules/catalog/views/catalog_view.dart';
import 'package:modernbank/app/modules/home/views/home_view.dart';
import 'package:modernbank/app/modules/more/views/more_view.dart';
import 'package:modernbank/app/modules/notification/views/notification_view.dart';

class RootappController extends GetxController {
  //TODO: Implement RootappController

  List<Widget> pages = [
    HomeView(),
     CatalogView(),
    NotificationView(),
    MoreView(),
    // AccountsView(),
  ];
  var currentIndex = 0.obs;

  PageController pageController = new PageController(initialPage: 0);
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }


}
