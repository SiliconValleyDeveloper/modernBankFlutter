import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:modernbank/app/modules/catalog/controllers/catalog_controller.dart';
import 'package:modernbank/widgets/catalog/circle_indicator.dart';

class CatalogAdCard extends GetWidget {

   CatalogAdCard({Key? key}) : super(key: key);
   final catalogAdCardController = Get.put(CatalogController());





  // @override
  // void initState() {
  //   _pageController = PageController();
  //   super.initState();
  // }
  //
  // @override
  // void dispose() {
  //   _pageController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 300,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: PageView.builder(
              controller: catalogAdCardController.pageController,
              onPageChanged: (page) {

                catalogAdCardController.currentPage.value= page;

              },
              key: PageStorageKey<String>("catalog_ad_card"),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Image.asset(
                  'assets/images/ad${index + 1}.png',
                  fit: BoxFit.cover,
                );
              },
              itemCount: 4,
            ),
          ),
          Positioned(
            top: 20,
            right: 20,
            child: CircleIndicator(
              count: 4,
              current: catalogAdCardController.currentPage.value,
            ),
          ),
        ],
      ),
    );
  }
}
