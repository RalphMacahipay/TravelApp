import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommerce_app/configuration/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'home_page/home_page.dart';
import 'place_to_visit/a_place_to_visit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const ChoosePage();
  }
}

class ChoosePage extends StatefulWidget {
  const ChoosePage({super.key});
  @override
  State<ChoosePage> createState() => _ChoosePageState();
}

class _ChoosePageState extends State<ChoosePage> {
  int index = 0;
  final List<String> iconList = [
    'assets/home_icon_unselected.svg',
    'assets/book_icon_unselected.svg',
    'assets/bell_icon_unselected.svg',
  ];

  final List<Widget> screens = [
    const HomePage(),
    const PlaceToVisit(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          index: index,
          height: 60,
          animationDuration: const Duration(milliseconds: 300),
          items: iconList
              .map((icon) => SvgPicture.asset(
                    icon,
                    color: kWhite,
                    width: 25,
                    height: 25,
                  ))
              .toList(),
          backgroundColor: kLighterWhite,
          color: kBlue,
        ),
        backgroundColor: kLighterWhite,
        // HomePage PlaceToVisit
        body: screens[index],
      ),
    );
  }
}
