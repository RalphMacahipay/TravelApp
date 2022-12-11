import 'package:ecommerce_app/configuration/size_padding.dart';
import 'package:ecommerce_app/configuration/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchFeature extends StatelessWidget {
  const SearchFeature({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            blurStyle: BlurStyle.normal,
            color: kLighterGrey,
            spreadRadius: 0.0,
            blurRadius: 1,
            offset: Offset(0, 0),
          )
        ],
        color: kWhite,
        borderRadius: BorderRadius.circular(kBorderRadius),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              style: kPoppinsRegurlar.copyWith(
                fontSize: SizeConfig.blockX! * 3.5,
                color: kBlue,
              ),
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: SizeConfig.blockX! * 3),
                border: kBorder,
                errorBorder: kBorder,
                enabledBorder: kBorder,
                focusedBorder: kBorder,
                disabledBorder: kBorder,
                hintText: "Search",
                hintStyle: kPoppinsRegurlar.copyWith(
                  color: kGrey,
                  fontSize: SizeConfig.blockX! * 3,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: kBlue,
              borderRadius: BorderRadius.circular(
                kBorderRadius,
              ),
            ),
            height: 49,
            width: 49,
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/searchBTN.svg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
