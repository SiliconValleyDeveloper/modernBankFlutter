import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:modernbank/widgets/notification/notification_app_bar.dart';
import 'package:modernbank/widgets/notification/notification_list.dart';
import 'package:modernbank/widgets/notification/old_notification_list.dart';

import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({Key? key}) : super(key: key);
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
              key: PageStorageKey<String>("notification"),
              slivers: [
                SliverAppBar(
                  titleSpacing: 10,
                  elevation: 0,
                  pinned: true,
                  backgroundColor: Colors.white,
                  title: NotificationAppBar(),
                ),
                SliverList(
                  delegate: SliverChildListDelegate.fixed(
                    [
                      NotificationList(),
                      SizedBox(height: 20,),
                      OldNotificationList(),
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