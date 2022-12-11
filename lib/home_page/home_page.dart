import 'package:ecommerce_app/configuration/size_padding.dart';
import 'package:flutter/material.dart';
import 'a_heading.dart';
import 'b_search_feature.dart';
import 'c_categories.dart';
import 'd_featured_place.dart';
import 'e_short_for_you.dart';
import 'f_top_trending_place.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: SizeConfig.blockX! * 4),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockX! * 6),
          children: [
            const Heading(),
            SizedBox(height: SizeConfig.blockX! * 10),
            const SearchFeature(),
            SizedBox(height: SizeConfig.blockX! * 4),
            const Categories(),
            SizedBox(height: SizeConfig.blockX! * 5),
            const FeaturedPlace(),
            SizedBox(height: SizeConfig.blockY! * 4),
            const ShortForYou(),
            const SizedBox(height: 19),
            const TopTrendingPlace()
            //
          ],
        ),
      ),
    );
  }
}
