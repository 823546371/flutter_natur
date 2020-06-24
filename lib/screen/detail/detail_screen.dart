import 'package:flutter/material.dart';
import 'package:flutter_natur/constant.dart';
import 'package:flutter_natur/screen/detail/widget/attrabute.dart';
import 'package:flutter_natur/screen/detail/widget/my_appbar.dart';
import 'package:flutter_natur/screen/detail/widget/product_title.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            MyAppbar(),
            Positioned(
              top: 370,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: mBackgroundColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(28),
                      topRight: Radius.circular(28)),
                ),
                child: Column(
                  children: <Widget>[
                    ProductTitle(),
                    Attrabute(),
                    Container(
                      padding: const EdgeInsets.all(24),
                      child: Text(
                        'Light weight Osmind Armchair is famous for it’s comfort '
                        'and durability, it’s made of unproductive oil palm wood '
                        'from Indonesia. Water resistant and weather shield formula '
                        'is applied for longer life.',
                        style: TextStyle(
                            color: mPrimaryTextColor,
                            height: 2,
                            fontSize: 12,
                            letterSpacing: 1.2),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 24,vertical: 16),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(13),
                        child: FlatButton(
                          color: mSubColor,
                          onPressed: () {},
                          child: Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.center,
                                width: double.infinity,
                                height: 46,
                                child: Text(
                                  'Add to Cart',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 16,
                                child: SvgPicture.asset(
                                  'assets/icons/shopping_cart.svg',
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
