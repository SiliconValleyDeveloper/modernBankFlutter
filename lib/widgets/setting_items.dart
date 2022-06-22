
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modernbank/utils/custom_theme.dart';

class SettingItem extends StatelessWidget {
  final IconData? leadingIcon;
  final Color? leadingIconColor;
  final String title;
  final GestureTapCallback? onTap;
  const SettingItem(
      {Key? key,
        required this.title,
        this.onTap,
        this.leadingIcon,
        this.leadingIconColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 15, right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Get.isDarkMode ? Colors.grey.shade900 : Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black87.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
        ),
        child: Container(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: leadingIcon != null
                ? [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Get.isDarkMode
                        ? Colors.grey.shade900
                        : Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black87.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset:
                        Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Icon(
                    leadingIcon,
                    color: leadingIconColor,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                  title,
                  style: titleStyle,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: labelColor,
                size: 14,
              )
            ]
                : [
              Expanded(
                child: Text(
                  title,
                  style: titleStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}