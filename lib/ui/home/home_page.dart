import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rotania_apps/shared/theme.dart';

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

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            header(),
            searchButtonInput(),
            promotionCard(),
            productCategory()
          ],
        ),
      ),
    );
  }
}
