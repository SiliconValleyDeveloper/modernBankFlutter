import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:modernbank/widgets/catalog/catalog_ad_card.dart';
import 'package:modernbank/widgets/catalog/catalog_alliance_card.dart';
import 'package:modernbank/widgets/catalog/catalog_app_bar.dart';
import 'package:modernbank/widgets/catalog/catalog_service_card.dart';
import 'package:modernbank/widgets/catalog/catalog_tab_bar.dart';

import '../../../../widgets/catalog/catalog_account_card.dart';
import '../../../../widgets/catalog/catalog_loan_card.dart';
import '../controllers/catalog_controller.dart';

class CatalogView extends GetView<CatalogController> {
   CatalogView({Key? key}) : super(key: key);
  final catelogController = Get.put(CatalogController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(

          alignment: Alignment.topCenter,
          child: Container(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            constraints: BoxConstraints(
              maxWidth: 632,
            ),
            child: CustomScrollView(

              controller: catelogController.scrollController,
              key: PageStorageKey<String>("catalog"),
              slivers: [
                SliverAppBar(
                  backgroundColor: Colors.white,

                  titleSpacing: 10,
                  elevation: 0,
                  title: CatalogAppBar(),
                ),
                SliverAppBar(
                  elevation: 0,
                  pinned: true,
                  titleSpacing: 0,
                  backgroundColor: Colors.white,
                  title: CatalogTabBar(
                    tabController: catelogController.tabController,
                    onTap: catelogController.onTapToScroll,
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate.fixed(
                    [
                      CatalogAdCard(
                        key: catelogController.adKey.value,
                      ),
                      CatalogAccountCard(
                        key: catelogController.accountKey.value,
                      ),
                      CatalogLoanCard(
                        key: catelogController.loanKey.value,
                      ),
                      CatalogServiceCard(
                        key: catelogController.serviceKey.value,
                      ),
                      CatalogAllianceCard(
                        key: catelogController.allianceKey.value,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


}
