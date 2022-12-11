import 'package:ecommerce_app/configuration/size_padding.dart';
import 'package:ecommerce_app/configuration/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeaturedPlace extends StatelessWidget {
  const FeaturedPlace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.blockY! * 37.4,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              right: 37,
            ),
            child: Container(
              padding: EdgeInsets.all(SizeConfig.blockX! * 3.2),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: kBlue.withOpacity(.051),
                    spreadRadius: 0.0,
                    blurRadius: 24,
                    offset: const Offset(0.0, 3.0),
                  )
                ],
                color: kWhite,
                borderRadius: BorderRadius.circular(
                  kBorderRadius,
                ),
              ),
              // height: SizeConfig.blockVertical! * ,
              width: SizeConfig.blockX! * 68,
              child: Column(
                children: [
                  Container(
                    height: SizeConfig.blockY! * 20.1,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('assets/img_mid.png')),
                      borderRadius: BorderRadius.circular(kBorderRadius),
                    ),
                  ),
                  SizedBox(height: SizeConfig.blockX! * 4.8),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Text(
                      "This is the place where i want to go 2022",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: kPoppinsSemiBold.copyWith(
                        fontSize: SizeConfig.blockX! * 4,
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.blockX! * 2), //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundColor: kWhite,
                            backgroundImage: NetworkImage(
                                "https://cdn-icons-png.flaticon.com/128/4140/4140048.png"),
                          ),
                          SizedBox(
                            width: SizeConfig.blockX! * 3.2,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Song Dong-Min",
                                style: kPoppinsBold.copyWith(
                                    fontSize: SizeConfig.blockX! * 3.4),
                              ),
                              Text(
                                "Song Dong-Min",
                                style: kPoppinsRegurlar.copyWith(
                                  color: kGrey,
                                  fontSize: SizeConfig.blockX! * 3.2,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: SizeConfig.blockX! * 9.8,
                        height: SizeConfig.blockX! * 9.8,
                        child: SvgPicture.asset('assets/share_icon.svg'),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
