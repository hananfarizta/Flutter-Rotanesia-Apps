import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rotania_apps/models/bestseller.dart';
import 'package:rotania_apps/models/favorite_craftsman.dart';
import 'package:rotania_apps/models/news.dart';
import 'package:rotania_apps/shared/theme.dart';
import 'package:rotania_apps/widgets/bestseller_card.dart';
import 'package:rotania_apps/widgets/favorite_craftsman_card.dart';
import 'package:rotania_apps/widgets/news_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 25,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Your Location',
                        style: secondaryTextStyle.copyWith(
                            fontSize: 12, fontWeight: reguler),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: redColor1,
                      )
                    ],
                  ),
                  Text(
                    'Bandung, Jawa Barat',
                    style: primaryTextStyle.copyWith(
                        fontSize: 14, fontWeight: semibold),
                  )
                ],
              ),
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/vector/ic_favorite.svg',
                ),
                const SizedBox(
                  width: 20,
                ),
                SvgPicture.asset(
                  'assets/vector/ic_notification.svg',
                ),
                const SizedBox(
                  width: 20,
                ),
                SvgPicture.asset(
                  'assets/vector/ic_cart.svg',
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget searchButtonInput() {
      return Container(
        margin:
            EdgeInsets.only(top: 25, left: defaultMargin, right: defaultMargin),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 50,
        decoration: BoxDecoration(
            color: const Color(0xffFAFAFA),
            borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/vector/ic_search.svg',
                width: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: TextFormField(
                  style: primaryTextStyle,
                  decoration: InputDecoration.collapsed(
                      hintText: 'Find the product you want',
                      hintStyle: grayTextStyle.copyWith(
                          fontSize: 12, fontWeight: medium)),
                ),
              ),
              SvgPicture.asset(
                'assets/vector/ic_mic.svg',
              )
            ],
          ),
        ),
      );
    }

    Widget promotionCard() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              Image.asset(
                'assets/bitmap/image_card_promotion1.png',
                height: 150,
              ),
              const SizedBox(
                width: 15,
              ),
              Image.asset(
                'assets/bitmap/image_card_promotion2.png',
                height: 150,
              ),
              const SizedBox(
                width: 15,
              ),
              Image.asset(
                'assets/bitmap/image_card_promotion3.png',
                height: 150,
              ),
              SizedBox(
                width: defaultMargin,
              ),
            ],
          ),
        ),
      );
    }

    Widget productCategory() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: defaultMargin),
              child: Text(
                'Product Category',
                style:
                    primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 9,
                  ),
                  SizedBox(
                    height: 76,
                    width: 80,
                    child: Column(
                      children: [
                        Container(
                          height: 48,
                          width: 48,
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: walletColor.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'assets/bitmap/image_wallet_icon.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          'Wallet',
                          style: secondaryTextStyle,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 76,
                    width: 80,
                    child: Column(
                      children: [
                        Container(
                          height: 48,
                          width: 48,
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: hatColor.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'assets/bitmap/image_hat_icon.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          'Hat',
                          style: secondaryTextStyle,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 76,
                    width: 80,
                    child: Column(
                      children: [
                        Container(
                          height: 48,
                          width: 48,
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: bagColor.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'assets/bitmap/image_bag_icon.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          'Bag',
                          style: secondaryTextStyle,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 76,
                    width: 80,
                    child: Column(
                      children: [
                        Container(
                          height: 48,
                          width: 48,
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: additionColor.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'assets/bitmap/image_addition_icon.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          'Addition',
                          style: secondaryTextStyle,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 76,
                    width: 80,
                    child: Column(
                      children: [
                        Container(
                          height: 48,
                          width: 48,
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: fittingsColor.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'assets/bitmap/image_fittings_icon.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          'Fittings',
                          style: secondaryTextStyle,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 76,
                    width: 80,
                    child: Column(
                      children: [
                        Container(
                          height: 48,
                          width: 48,
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: footwearColor.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            'assets/bitmap/image_footwear_icon.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          'Footwear',
                          style: secondaryTextStyle,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget cardCart() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 20,
        ),
        padding: EdgeInsets.symmetric(vertical: defaultMargin, horizontal: 15),
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: greenColor2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Assorted Rattan\nIndonesia',
                  style: whiteTextStyle.copyWith(
                      fontWeight: semibold, fontSize: 20),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      'Belanja yuk',
                      style: whiteTextStyle.copyWith(
                          fontWeight: semibold,
                          fontSize: 16,
                          color: whiteColor.withOpacity(0.5)),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: whiteColor,
                    )
                  ],
                )
              ],
            ),
            Image.asset(
              'assets/bitmap/image_big_wallet.png',
              width: 108,
              height: double.infinity,
            )
          ],
        ),
      );
    }

    Widget favoriteCraftsman() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Favorite Craftsman',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            const SizedBox(
              height: 16,
            ),
            FavoriteCraftsmanCard(FavoriteCraftsman(
                1,
                'assets/bitmap/image_favorite_craftsman1.png',
                'Galilea Rotan',
                'Bandung, Jawa Barat')),
            const SizedBox(
              height: 8,
            ),
            FavoriteCraftsmanCard(FavoriteCraftsman(
                1,
                'assets/bitmap/image_favorite_craftsman2.png',
                'Jawet Perindu',
                'Wonosobo, Jawa Timur')),
            const SizedBox(
              height: 8,
            ),
            FavoriteCraftsmanCard(FavoriteCraftsman(
                1,
                'assets/bitmap/image_favorite_craftsman1.png',
                'Indang Apang',
                'Denpasar, Bali')),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        height: 903,
        margin: const EdgeInsets.only(top: 20),
        decoration: const BoxDecoration(
            color: Color(0xffFAFAFA),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: defaultMargin,
                  right: defaultMargin,
                  top: defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Seller',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                  Text(
                    'See All',
                    style: redTextStyle1.copyWith(
                        fontSize: 12, fontWeight: reguler),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: defaultMargin,
                  ),
                  BestSellerCard(BestSeller(1, 'assets/bitmap/image_wallet.png',
                      'Rattan Wallet', 'Galilea Rotan', 'Rp. 150.000,-')),
                  const SizedBox(
                    width: 15,
                  ),
                  BestSellerCard(BestSeller(2, 'assets/bitmap/image_bag.png',
                      'Handbag', 'Jawet Perindu', 'Rp. 200.000,-')),
                  const SizedBox(
                    width: 15,
                  ),
                  BestSellerCard(BestSeller(3, 'assets/bitmap/image_mat.png',
                      'Rattan Mat', 'Indang Apang', 'Rp. 700.000,-')),
                  const SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
            cardCart(),
            favoriteCraftsman(),
          ],
        ),
      );
    }

    Widget news() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Latest news',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
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
          ],
        ),
      );
    }

    Widget allNewsButton() {
      return Container(
        height: 46,
        width: double.infinity,
        margin: EdgeInsets.only(
            left: defaultMargin, right: defaultMargin, top: 16, bottom: 40),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: whiteColor,
            border: Border.all(color: redColor4)),
        child: Center(
          child: GestureDetector(
            onTap: () {},
            child: Text('View all news', style: redTextStyle1),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            header(),
            searchButtonInput(),
            promotionCard(),
            productCategory(),
            content(),
            news(),
            allNewsButton(),
          ],
        ),
      ),
    );
  }
}
