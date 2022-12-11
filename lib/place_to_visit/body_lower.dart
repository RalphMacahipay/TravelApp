import 'package:ecommerce_app/configuration/size_padding.dart';
import 'package:ecommerce_app/configuration/style.dart';
import 'package:flutter/material.dart';

class MiddleCurve extends StatelessWidget {
  const MiddleCurve({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(42),
            topRight: Radius.circular(42),
          ),
          color: kLighterWhite,
        ),
      ),
    );
  }
}

class Welcome extends StatelessWidget {
  const Welcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Text(
        "Welcome to\nPalawan",
        style: kPoppinsBold.copyWith(
            fontSize: SizeConfig.blockX! * 8, color: kDarkBlue),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: kLighterGrey.withOpacity(0.2)),
        color: kWhite,
        borderRadius: BorderRadius.circular(
          kBorderRadius,
        ),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 40),
      padding: EdgeInsets.all(SizeConfig.blockX! * 2),
      height: SizeConfig.blockY! * 6.65,
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: kWhite,
            radius: 13,
            backgroundImage: NetworkImage(
              'https://cdn-icons-png.flaticon.com/512/2202/2202112.png',
            ),
          ),
          SizedBox(width: SizeConfig.blockX! * 2),
          Row(
            children: [
              Text(
                "Keanu Carpent May 17 • 8 min read",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: kPoppinsMediumBold.copyWith(
                    wordSpacing: .1,
                    fontSize: SizeConfig.blockX! * 3.2,
                    letterSpacing: .2,
                    color: kLighterGrey),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class DescriptionPalawan extends StatelessWidget {
  const DescriptionPalawan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Text(
        'The island province of Palawan has much to offer to those who want to get to the heart and soul of the Philippines. The more adventurous traveler can visit one of Palawan’s indigenous people, the Batak, whose settlements are on the slope of Cleopatra’s Needle. The Tabon and Palawan Museums with their displays of prehistoric artifacts from the Tabon caves and items from the Spanish era bring the areas’ local history to life and are well worth exploring. There is an amazing variety of architecture from the famous Lighthouses at Poblacion and Brooke’s Point, to the Fort at Cagayancillo and Culion Cathedral. For a more lively experience of Palawan culture, there are numerous colorful and exciting festivals held throughout the year featuring parades, processions, religious ceremonies, and dance displays.The opportunities for adventure in Palawan are endless. The province has some of the most exciting and challenging dive sites in the world with a myriad of marine life to view and photograp.Kayaking and rafting among the spectacular limestone cliffs and the extensive coral reefs provide exhilarating challenges with stunning backdrops.',
        style: kPoppinsMediumBold.copyWith(fontSize: SizeConfig.blockX! * 4.2),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
