import 'package:flutter/material.dart';
import 'package:flutter_natur/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    Key key, this.onchange,
  }) : super(key: key);

  final Function onchange;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24,vertical: 24),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      decoration: BoxDecoration(
          border: Border.all(color: mBorderColor, width: 1),
          borderRadius: BorderRadius.circular(12)),
      child: TextField(
        onChanged: onchange,
        style: TextStyle(
          color:mPrimaryColor
        ),
        cursorColor: mPrimaryColor,
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          icon: SvgPicture.asset(
            'assets/icons/search.svg',
            color: mPrimaryColor,
          ),
          suffixIcon: Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: SvgPicture.asset(
              'assets/icons/mic.svg',
              color: mPrimaryColor,
            ),
          ),
          hintText: 'Search for products',
          hintStyle: TextStyle(color: mPrimaryColor),
        ),
      ),
    );
  }
}