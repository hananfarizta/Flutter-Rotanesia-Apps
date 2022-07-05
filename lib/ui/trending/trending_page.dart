import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rotania_apps/shared/theme.dart';
import 'package:rotania_apps/widgets/news_trending_widget.dart';
import 'package:rotania_apps/widgets/product_trending_widget.dart';

class TrendingPage extends StatelessWidget {
  const TrendingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: whiteColor,
            automaticallyImplyLeading: false,
            elevation: 3,
            title: Text(
              'Trending',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            bottom: TabBar(
              indicatorColor: redColor1,
              unselectedLabelColor: grayColor2,
              labelColor: redColor1,
              tabs: [
                Tab(
                  child: Text(
                    'Product',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'News',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: const TabBarView(children: [
            Center(
              child: ProductTrending(),
            ),
            Center(
              child: NewsTrending(),
            ),
          ]),
        ));
  }
}
