import 'package:ecommerce_app/configuration/size_padding.dart';
import 'package:ecommerce_app/configuration/style.dart';
import 'package:ecommerce_app/place_to_visit/b_slider_top.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'c_body_lower.dart';

class PlaceToVisit extends StatefulWidget {
  const PlaceToVisit({super.key});

  @override
  State<PlaceToVisit> createState() => _PlaceToVisitState();
}

class _PlaceToVisitState extends State<PlaceToVisit> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kLighterWhite,
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: SizeConfig.blockY! * 50,
                child: Stack(
                  children: const [
                    FullScreenSlider(),
                    MiddleCurve(),
                    ButtonsTop()
                  ],
                ),
              ),
              const Welcome(),
              SizedBox(height: SizeConfig.blockY! * 2.6),
              const Profile(),
              const SizedBox(height: 20),
              const DescriptionPalawan()
            ]),
      ),
    );
  }
}

class ButtonsTop extends StatelessWidget {
  const ButtonsTop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 60,
          horizontal: 40,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderRadius),
              ),
              child: SvgPicture.asset('assets/back_icon.svg'),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderRadius),
              ),
              child: SvgPicture.asset('assets/book_mark_icon.svg'),
            ),
          ],
        ),
      ),
    );
  }
}
