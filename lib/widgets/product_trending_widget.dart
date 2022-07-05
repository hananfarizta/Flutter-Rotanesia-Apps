import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rotania_apps/shared/theme.dart';

class ProductTrending extends StatelessWidget {
  const ProductTrending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bestSellingProductTitle() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 20,
          horizontal: defaultMargin,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Best Selling Product',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: semibold),
            ),
            Text(
              'See All',
              style: cyanTextStyle.copyWith(fontSize: 12, fontWeight: reguler),
            ),
          ],
        ),
      );
    }

    Widget bestSellingProduct() {
      return Container(
        height: 315,
        width: double.infinity,
        color: const Color(0xffFAFAFA),
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 20,
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              color: whiteColor, borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.symmetric(
            horizontal: 17,
            vertical: defaultMargin,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/bitmap/image_wallet.png',
                    width: 50,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rattan Wallet',
                          style: primaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Sold : 1000 product',
                          style: secondaryTextStyle.copyWith(
                              fontSize: 12, fontWeight: medium),
                        )
                      ],
                    ),
                  ),
                  Text(
                    'Rp 150.000',
                    style: redTextStyle1.copyWith(
                        fontSize: 14,
                        fontWeight: semibold,
                        color: const Color(0xffBA1C13)),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Divider(
                color: grayColor2,
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/bitmap/image_hat.png',
                    width: 50,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rattan Hat',
                          style: primaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Sold : 900 product',
                          style: secondaryTextStyle.copyWith(
                              fontSize: 12, fontWeight: medium),
                        )
                      ],
                    ),
                  ),
                  Text(
                    'Rp 350.000',
                    style: redTextStyle1.copyWith(
                        fontSize: 14,
                        fontWeight: semibold,
                        color: const Color(0xffBA1C13)),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Divider(
                color: grayColor2,
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/bitmap/image_key_chain.png',
                    width: 50,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rattan Key Chain',
                          style: primaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Sold : 800 product',
                          style: secondaryTextStyle.copyWith(
                              fontSize: 12, fontWeight: medium),
                        )
                      ],
                    ),
                  ),
                  Text(
                    'Rp 75.000',
                    style: redTextStyle1.copyWith(
                        fontSize: 14,
                        fontWeight: semibold,
                        color: const Color(0xffBA1C13)),
                  )
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget salesOverview() {
      return Container(
          margin: EdgeInsets.only(
            top: 20,
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sales Overview',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: semibold),
                  ),
                  Text(
                    'See All',
                    style: cyanTextStyle.copyWith(
                        fontSize: 12, fontWeight: reguler),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Image.asset(
                'assets/bitmap/image_graphic.png',
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Note : ',
                    style: primaryTextStyle.copyWith(
                        fontSize: 10, fontWeight: medium),
                  ),
                  Text(
                    'In million',
                    style: primaryTextStyle.copyWith(
                        fontSize: 10,
                        fontWeight: reguler,
                        color: const Color(0xff626262)),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Statistik Jangkauan',
                style: primaryTextStyle.copyWith(
                    fontSize: 16, fontWeight: semibold),
              )
            ],
          ));
    }

    Widget statistikJangkauan() {
      return Container(
        height: 315,
        margin: const EdgeInsets.only(top: 20),
        width: double.infinity,
        color: const Color(0xffFAFAFA),
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 20,
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              color: whiteColor, borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.symmetric(
            horizontal: 17,
            vertical: defaultMargin,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: const Color(0xffFDE8E0),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: SvgPicture.asset('assets/vector/ic_customer.svg'),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Customer Reach',
                          style: primaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Total : 5000+ Customer',
                          style: secondaryTextStyle.copyWith(
                              fontSize: 12, fontWeight: medium),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Divider(
                color: grayColor2,
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: const Color(0xffFDE8E0),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: SvgPicture.asset('assets/vector/ic_money.svg'),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Area Coverage',
                          style: primaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Total : 5 Country, 125 Area',
                          style: secondaryTextStyle.copyWith(
                              fontSize: 12, fontWeight: medium),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Divider(
                color: grayColor2,
                thickness: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: const Color(0xffFDE8E0),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: SvgPicture.asset('assets/vector/ic_income.svg'),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Income Reach',
                          style: primaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Total : Rp 50 million - Rp 100 million',
                          style: secondaryTextStyle.copyWith(
                              fontSize: 12, fontWeight: medium),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: ListView(
        children: [
          bestSellingProductTitle(),
          bestSellingProduct(),
          salesOverview(),
          statistikJangkauan(),
        ],
      ),
    );
  }
}
