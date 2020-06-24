import 'package:flutter/material.dart';
import 'package:flutter_natur/constant.dart';

class Sort extends StatefulWidget {
  @override
  _SortState createState() => _SortState();
}

class _SortState extends State<Sort> {
  List<String> sortList = ['New', 'Popular', 'Sale'];

  int currentSelect = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: sortList.length,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            setState(() {
              currentSelect = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  sortList[index],
                  style: TextStyle(
                    color: currentSelect == index
                        ? mPrimaryTextColor
                        : mPrimaryColor,
                    fontWeight: currentSelect == index
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  width: 4,
                  height: 4,
                  decoration: BoxDecoration(
                    color: currentSelect == index
                        ? mPrimaryTextColor
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(50),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}