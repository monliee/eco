import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:eco/theme.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  // final List imgList = [
  //   'assets/sepatu1.png',
  //   'assets/sepatu2.png',
  //   'assets/sepatu3.png',
  // ];

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: defaultMargin,
              right: defaultMargin,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.chevron_left,
                  ),
                ),
                Icon(
                  Icons.shopping_bag_rounded,
                  color: bgColor1,
                ),
              ],
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(
              reverse: false,
              pauseAutoPlayOnTouch: true,
              viewportFraction: 0.9,
              aspectRatio: 8 / 5,
            ),
            items: [
              'assets/sepatu1.png',
              'assets/sepatu2.png',
              'assets/sepatu3.png',
            ].map(
              (i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Image.asset(i),
                    );
                  },
                );
              },
            ).toList(),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: bgColor6,
      body: ListView(
        children: [
          header(),
        ],
      ),
    );
  }
}
