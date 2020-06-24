import 'package:flutter/material.dart';
import 'package:flutter_natur/constant.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            'Osmind\nArmchair',
            style: TextStyle(
              color: mPrimaryTextColor,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '\$230',
            style: TextStyle(
              color: mPrimaryTextColor,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}