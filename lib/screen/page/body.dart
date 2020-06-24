import 'package:flutter/material.dart';
import 'package:flutter_natur/screen/page/widget/category.dart';
import 'package:flutter_natur/screen/page/widget/product_page.dart';
import 'package:flutter_natur/screen/page/widget/search_input.dart';
import 'package:flutter_natur/screen/page/widget/sort.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SearchInput(
            onchange: (value) {},
          ),
          Sort(),
          ProductPage(),
          Category(),
        ],
      ),
    );
  }
}

