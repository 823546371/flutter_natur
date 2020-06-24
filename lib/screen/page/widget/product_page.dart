import 'package:flutter/material.dart';
import 'package:flutter_natur/constant.dart';
import 'package:flutter_natur/model/product.dart';
import 'package:flutter_natur/screen/detail/detail_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  PageController _controller;
  int _pageIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController(viewportFraction: 0.7);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      child: PageView.builder(
        controller: _controller,
        onPageChanged: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
        itemCount: productList.length,
        itemBuilder: (context, index) => _buldItem(index),
      ),
    );
  }

  Widget _buldItem(int index) {
    Product product = productList[index];

    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetailScreen();
            },
          ),
        );
      },
      child: UnconstrainedBox(
        alignment: Alignment.centerLeft,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          height: _pageIndex == index ? 360 : 280,
          width: _pageIndex == index ? 240 : 180,
          child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.bottomLeft,
                width: double.infinity,
                height: double.infinity,
                margin: const EdgeInsets.only(bottom: 30),
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(product.imageUrl),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          color: mPrimaryColor.withOpacity(0.3),
                          offset: Offset(0, 8),
                          blurRadius: 13),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        product.price,
                        style: TextStyle(
                          color: mPrimaryTextColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        product.name,
                        style: TextStyle(
                          color: mPrimaryTextColor.withOpacity(
                            0.5,
                          ),
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 16,
                bottom: 0,
                child: Container(
                  width: 56,
                  height: 56,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: mSubColor,
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: [
                        BoxShadow(
                          color: mSubColor.withOpacity(0.5),
                          offset: Offset(0, 8),
                          blurRadius: 13,
                        ),
                      ]),
                  child: SvgPicture.asset('assets/icons/shopping_cart.svg'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
