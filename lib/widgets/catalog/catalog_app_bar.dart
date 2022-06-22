import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatalogAppBar extends GetWidget {
  @override
  Widget build(BuildContext context) {
    return Container(


      height: 50,
      child: Row(
        children: [
          Text(
            'Catalog',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
