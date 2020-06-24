import 'package:flutter/material.dart';
import 'package:flutter_natur/constant.dart';
import 'package:flutter_natur/screen/detail/widget/attrabute_item.dart';

class Attrabute extends StatelessWidget {
  const Attrabute({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(color: mBorderColor, width: 1),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          AttrabuteItem(
            imageUrl: 'assets/icons/move.svg',
            content: '24x19x18',
          ),
          AttrabuteItem(
            imageUrl: 'assets/icons/archive.svg',
            content: 'Palm Tree',
          ),
          AttrabuteItem(
            imageUrl: 'assets/icons/flag.svg',
            content: 'Indonesia',
          ),
          AttrabuteItem(
            imageUrl: 'assets/icons/award.svg',
            content: '5 Years',
          )
        ],
      ),
    );
  }
}

