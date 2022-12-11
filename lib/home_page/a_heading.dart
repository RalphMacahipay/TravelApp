import 'package:ecommerce_app/configuration/size_padding.dart';
import 'package:ecommerce_app/configuration/style.dart';
import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 51,
          width: 51,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: NetworkImage(
                'https://cdn-icons-png.flaticon.com/128/924/924874.png',
              )),
              borderRadius: BorderRadius.circular(kBorderRadius),
              color: kLightBlue),
        ),
        SizedBox(width: SizeConfig.blockX! * 4),
        Column(
          children: <Widget>[
            Text(
              "Kevin Macahipay",
              style: kPoppinsBold.copyWith(
                fontSize: SizeConfig.blockX! * 4,
              ),
            ),
            Text(
              "Applicant for Kapwa",
              style: kPoppinsRegurlar.copyWith(
                  fontSize: SizeConfig.blockX! * 4, color: kGrey),
            ),
          ],
        ),
      ],
    );
  }
}
