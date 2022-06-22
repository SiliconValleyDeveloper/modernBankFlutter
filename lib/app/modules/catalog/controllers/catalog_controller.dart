import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatalogController extends GetxController with GetTickerProviderStateMixin{
  //TODO: Implement CatalogController

  late TabController tabController;
  late ScrollController scrollController;

  final adKey =  GlobalKey().obs;
  final accountKey =  GlobalKey().obs;
  final loanKey =  GlobalKey().obs;
  final serviceKey =  GlobalKey().obs;
  final allianceKey =  GlobalKey().obs;

  final adHeight = 0.obs;
  final accountHeight = 0.obs;
  final loanHeight = 0.obs;
  final serviceHeight = 0.obs;
  final allianceHeight = 0.obs;
  final isTabToScroll = false.obs;

  final count = 0.obs;
  @override
  void onInit() {
    scrollController = ScrollController();
    tabController = TabController(length: 5, vsync: this);
    scrollController.addListener(() {
      onScroll();
    });
    pageController = PageController();
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

  @override
  void dispose() {
    tabController.dispose();
    scrollController.dispose();
    pageController.dispose();
    super.dispose();
  }

  void increment() => count.value++;


  void onScroll() {
    if (isTabToScroll.value) return;

    if (adKey.value.currentContext != null) {
      adHeight.value = adKey.value.currentContext?.size!.height as int;
    }
    if (accountKey.value.currentContext != null) {
      accountHeight.value = accountKey.value.currentContext?.size!.height as int;
    }
    if (loanKey.value.currentContext != null) {
      loanHeight.value = loanKey.value.currentContext?.size!.height as int;
    }
    if (serviceKey.value.currentContext != null) {
      serviceHeight.value = serviceKey.value.currentContext?.size!.height as int;
    }
    if (allianceKey.value.currentContext != null) {
      allianceHeight.value = allianceKey.value.currentContext?.size!.height as int;
    }

    if (scrollController.offset <= adHeight.value) {
      tabController.animateTo(0, duration: const Duration(milliseconds: 0), curve: Curves.linear);
    } else if (scrollController.offset > adHeight.value  &&
        scrollController.offset <= adHeight.value  + accountHeight.value ) {
      tabController.animateTo (1, duration: const Duration(milliseconds: 0), curve: Curves.linear);
    } else if (scrollController.offset > adHeight.value  + accountHeight.value  &&
        scrollController.offset <= adHeight.value  + accountHeight.value  + loanHeight.value ) {
      tabController.animateTo(2, duration: const Duration(milliseconds: 0), curve: Curves.linear);
    } else if (scrollController.offset >
        adHeight.value + accountHeight.value + serviceHeight.value &&
        scrollController.offset <=
            adHeight.value + accountHeight.value + loanHeight.value + serviceHeight.value) {

      if (scrollController.offset >=
          scrollController.position.maxScrollExtent) {
        tabController.animateTo(4, duration: const Duration(milliseconds: 0), curve: Curves.linear);
      } else {
        tabController.animateTo(3, duration: const Duration(milliseconds: 0), curve: Curves.linear);
      }
    }
  }

  void onTapToScroll(int index) async {
    var keys = [adKey, accountKey, loanKey, serviceKey, allianceKey];
    var previousIndex = tabController.previousIndex;

    isTabToScroll.value = true;
    if (index == 0) {
      await scrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.linear,
      );
    } else {
      if (previousIndex < index) {
        for (var i = previousIndex; i <= index; i++) {
          await scrollController.position.ensureVisible(
            keys[i].value.currentContext!.findRenderObject()!,
            duration: const Duration(milliseconds: 100),
            curve: Curves.linear,
          );
        }
      } else {
        for (var i = previousIndex; i >= index; i--) {
          await scrollController.position.ensureVisible(
            keys[i].value.currentContext!.findRenderObject()!,
            duration: const Duration(milliseconds: 100),
            curve: Curves.linear,
          );
        }
      }
    }
    isTabToScroll.value = false;
  }



  //CATALOG AD

  late PageController pageController;
  final currentPage = 0.obs;

}
