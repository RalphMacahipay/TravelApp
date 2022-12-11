import 'package:ecommerce_app/configuration/size_padding.dart';
import 'package:ecommerce_app/configuration/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopTrendingPlace extends StatelessWidget {
  const TopTrendingPlace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.blockY! * 11.5,
      child: ListView.builder(
        itemCount: 5,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: kBlue.withOpacity(.051),
                  spreadRadius: 0.0,
                  blurRadius: 24,
                  offset: const Offset(0.0, 3.0),
                ),
              ],
              color: kWhite,
              borderRadius: BorderRadius.circular(kBorderRadius),
            ),
            height: 88,
            width: 208,
            child: Row(children: [
              Container(
                padding: const EdgeInsets.all(9),
                child: Image.asset("assets/img_mid.png"),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      'Top Trending',
                      maxLines: 2,
                      style: kPoppinsBold.copyWith(
                          overflow: TextOverflow.ellipsis,
                          fontSize: SizeConfig.blockY! * 1.6),
                    ),
                  ),
                  SizedBox(height: SizeConfig.blockY! * 1.5),
                  Row(
                    children: [
                      SvgPicture.asset('assets/eye_icon.svg'),
                      SizedBox(width: SizeConfig.blockX! * 2.5),
                      Text(
                        '40,999',
                        style: kPoppinsMediumBold.copyWith(
                            color: kGrey, fontSize: 12),
                      )
                    ],
                  )
                ],
              )
            ]),
          );
        },
      ),
    );
  }
}
