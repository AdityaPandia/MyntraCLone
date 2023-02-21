import 'package:flutter/material.dart';
import 'package:flutter_custom_carousel_slider/flutter_custom_carousel_slider.dart';

class carousel extends StatefulWidget {
  @override
  _carousel createState() => _carousel();
}

class _carousel extends State<carousel> {
  List<CarouselItem> itemList = [
    CarouselItem(
      image: AssetImage('images/firstcard.jpeg'),
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: AssetImage('images/secondcard.jpeg'),
      onImageTap: (i) {},
    ),
    CarouselItem(
      image: AssetImage('images/thirdcard.jpeg'),
      onImageTap: (i) {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomCarouselSlider(
          items: itemList,
          height: 250,
          autoplay: true,
        ),
      ],
    );
  }
}
