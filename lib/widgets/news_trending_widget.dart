import 'package:flutter/material.dart';
import 'package:rotanesia_apps/models/news.dart';
import 'package:rotanesia_apps/shared/theme.dart';
import 'package:rotanesia_apps/widgets/news_card.dart';

class NewsTrending extends StatelessWidget {
  const NewsTrending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget informationCategory() {
      return Container(
        margin:
            EdgeInsets.only(top: 30, left: defaultMargin, right: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Information Category',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: const Color(0xffD8E2F1).withOpacity(0.5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/bitmap/image_article.png',
                        width: 30,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Article',
                        style: primaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: reguler,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: const Color(0xff68B1FC).withOpacity(0.3)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/bitmap/image_webinar.png',
                        width: 30,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Webinar',
                        style: primaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: reguler,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: const Color(0xffFCD770).withOpacity(0.3)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/bitmap/image_training.png',
                        width: 30,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Training',
                        style: primaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: reguler,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: const Color(0xffB3B3B3).withOpacity(0.3)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/bitmap/image_exhibition.png',
                        width: 30,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Exhibition',
                        style: primaryTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: reguler,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget news() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'News',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
                Text(
                  'See All',
                  style:
                      redTextStyle1.copyWith(fontSize: 11, fontWeight: reguler),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            NewsCard(
              News(
                  1,
                  'Kemenhub and Dekranas Provide Training for Crafts',
                  'National Craft Council and Ministry...',
                  'assets/bitmap/image_news1.png'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Color(0xffEDEDED),
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            NewsCard(
              News(
                  2,
                  'Vivi Zubedi\'s Story of Success in Importing Knitted Bags',
                  'Kerja keras Vivi bersama para pengr..',
                  'assets/bitmap/image_news2.png'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Color(0xffEDEDED),
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            NewsCard(
              News(
                  3,
                  'No Tourists, Craftsmen in Bali Target the Export Market',
                  'The craftsmen in Bali are clueless...',
                  'assets/bitmap/image_news3.png'),
            ),
          ],
        ),
      );
    }

    Widget video() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Video',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
                Text(
                  'See All',
                  style:
                      redTextStyle1.copyWith(fontSize: 11, fontWeight: reguler),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            NewsCard(
              News(
                  1,
                  'Kemenhub and Dekranas Provide Training for Crafts',
                  'National Craft Council and Ministry...',
                  'assets/bitmap/image_news_video1.png'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Color(0xffEDEDED),
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            NewsCard(
              News(
                  2,
                  'Vivi Zubedi\'s Story of Success in Importing Knitted Bags',
                  'Kerja keras Vivi bersama para pengr..',
                  'assets/bitmap/image_news_video2.png'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Color(0xffEDEDED),
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            NewsCard(
              News(
                  3,
                  'No Tourists, Craftsmen in Bali Target the Export Market',
                  'The craftsmen in Bali are clueless...',
                  'assets/bitmap/image_news_video3.png'),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: whiteColor,
        body: ListView(
          children: [
            informationCategory(),
            news(),
            video(),
          ],
        ));
  }
}
