import 'package:flutter/material.dart';
import 'package:flutter_natur/constant.dart';
import 'package:flutter_natur/screen/page/body.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: mBackgroundColor,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/menu.svg'),
        onPressed: () {},
      ),
      title: Text(
        'Natur.',
        style: TextStyle(
          color: mPrimaryTextColor,
          fontSize: 21,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: <Widget>[
        IconButton(
          padding: const EdgeInsets.all(4),
          icon: Container(
            width: 40,
            height: 40,
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(
                'assets/images/avater.png',
              ),
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
