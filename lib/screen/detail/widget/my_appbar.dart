import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyAppbar extends StatelessWidget {
  const MyAppbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 390,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/photo-3.png'),
            fit: BoxFit.fill),
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: SvgPicture.asset('assets/icons/right.svg'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            IconButton(
              icon: SvgPicture.asset('assets/icons/heart.svg'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}