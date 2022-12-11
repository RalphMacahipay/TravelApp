import 'package:ecommerce_app/configuration/size_padding.dart';
import 'package:ecommerce_app/configuration/style.dart';
import 'package:flutter/material.dart';

class ShortForYou extends StatelessWidget {
  const ShortForYou({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Short For You",
          style: kPoppinsBold.copyWith(fontSize: SizeConfig.blockX! * 4.5),
        ),
        Text(
          "View All",
          style: kPoppinsMediumBold.copyWith(
              color: kBlue, fontSize: SizeConfig.blockX! * 4),
        )
      ],
    );
  }
}
