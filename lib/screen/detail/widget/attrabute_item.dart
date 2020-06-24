import 'package:flutter/material.dart';
import 'package:flutter_natur/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AttrabuteItem extends StatelessWidget {
  const AttrabuteItem({
    Key key,
    this.imageUrl,
    this.content,
  }) : super(key: key);

  final String imageUrl;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SvgPicture.asset(
          imageUrl,
          width: 28,
          height: 28,
          color: mPrimaryColor,
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          content,
          style: TextStyle(
            color: mPrimaryTextColor,
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
