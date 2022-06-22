import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/custom_theme.dart';

class InputField extends StatelessWidget {
  const InputField(
      {Key? key,
      required this.title,
      required this.hint,
      this.controller,
      required this.widget})
      : super(key: key);

  final TextEditingController? controller;
  final String hint;
  final String title;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: titleStyle,
          ),
          Container(
            height: 52,
            margin: const EdgeInsets.only(top: 8.0),
            padding: const EdgeInsets.only(left: 14),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(5)),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    //readOnly: widget==null?false:true,
                    autofocus: false,
                    cursorColor: Get.isDarkMode
                        ? Colors.grey.shade100
                        : Colors.grey.shade700,
                    controller: controller,
                    style: subTitleStyle,
                    decoration: InputDecoration(
                      hintText: hint,
                      hintStyle: subTitleStyle,
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: context.theme.backgroundColor, width: 0)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: context.theme.backgroundColor, width: 0)),
                    ),
                  ),
                ),
                widget == null
                    ? Container()
                    : Container(
                        child: widget,
                      )
              ],
            ),
          )
        ],
      ),
    );
  }
}
