import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/configuration/size_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

final List<String> imageList = [
  'https://i.pinimg.com/564x/bc/d9/9e/bcd99e20db4bdb48cb8b0372ac4e9099.jpg',
  'https://i.pinimg.com/564x/8a/7c/a1/8a7ca1bbae3ff9d1c5261273e5a55cc0.jpg',
  'https://i.pinimg.com/564x/d1/db/30/d1db302125b17a309708f4436eb85662.jpg',
  'https://i.pinimg.com/originals/72/29/d0/7229d0861e8c5a9e9ed6178db008926f.jpg',
  'https://i.pinimg.com/564x/5a/de/48/5ade489a003e0629c5eea007e93076bc.jpg',
  'https://i.pinimg.com/originals/c9/2b/6e/c92b6e49f22a8658626ade297f7a4db9.jpg'
];

class FullScreenSlider extends StatefulWidget {
  const FullScreenSlider({super.key});

  @override
  State<FullScreenSlider> createState() => _FullScreenSliderState();
}

class _FullScreenSliderState extends State<FullScreenSlider> {
  int? current;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    current ??= 0;
  }

  @override
  Widget build(BuildContext context) {
    final CarouselController controllerCarousel = CarouselController();
    return Stack(
      children: [
        CarouselSlider(
          carouselController: controllerCarousel,
          options: CarouselOptions(
            height: SizeConfig.blockY! * 50,
            viewportFraction: 1.0,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                current = index;
              });
            },
            initialPage: current!,
          ),
          items: imageList
              .map((item) => Center(
                    child: Image.network(
                      item,
                      fit: BoxFit.cover,
                      height: SizeConfig.blockY! * 49.9,
                      width: double.infinity,
                    ),
                  ))
              .toList(),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 52),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList
                  .asMap()
                  .entries
                  .map(
                    (entry) => GestureDetector(
                      onTap: () => controllerCarousel.animateToPage(entry.key),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                        ),
                        child: SvgPicture.asset(
                          current == entry.key
                              ? 'assets/icon_star.svg'
                              : 'assets/icon_point.svg',
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        )
      ],
    );
  }
}
