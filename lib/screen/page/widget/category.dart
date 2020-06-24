import 'package:flutter/material.dart';
import 'package:flutter_natur/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int currentSelect = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'Categories',
            style: TextStyle(
              color: mPrimaryTextColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 150,
          child: ListView.builder(
            itemCount: categoryList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                setState(() {
                  currentSelect = index;
                });
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 70,
                      height: 70,
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: currentSelect == index
                              ? mPrimaryColor
                              : mBorderColor,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(13),
                        color: currentSelect == index
                            ? mPrimaryColor
                            : Colors.transparent,
                      ),
                      child: SvgPicture.asset(
                        categoryList[index]['imageUrl'],
                        color: currentSelect == index
                            ? Colors.white
                            : mPrimaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      categoryList[index]['name'],
                      style: TextStyle(
                        color: mPrimaryTextColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
