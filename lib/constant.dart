import 'package:flutter/material.dart';
import 'package:flutter_natur/model/product.dart';

Color mBackgroundColor = Color(0xFFFCFAF8);

Color mPrimaryColor = Color(0xFFE1A067);
Color mSceondColor = Color(0xFFF7F1EA);

Color mBorderColor = Color(0xFFF7F1EA);

Color mSubColor = Color(0xFF6A9347);

Color mPrimaryTextColor = Color(0xFF633820);

List productList = [
  Product('assets/images/photo-1.png', 'Osmind Armchair', '\$230'),
  Product('assets/images/photo-2.png', 'Arc Rockingchair', '\$190'),
  Product('assets/images/photo-1.png', 'Osmind Armchair', '\$230'),
  Product('assets/images/photo-2.png', 'Arc Rockingchair', '\$190'),
  Product('assets/images/photo-1.png', 'Osmind Armchair', '\$230'),
];

List categoryList = [
  {'imageUrl': 'assets/icons/chairs.svg', 'name': 'Chairs'},
  {'imageUrl': 'assets/icons/tables.svg', 'name': 'Tables'},
  {'imageUrl': 'assets/icons/lamps.svg', 'name': 'Lamps'},
  {'imageUrl': 'assets/icons/shelves.svg', 'name': 'Shelves'},
];
