import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:rotanesia_apps/routes/app_page.dart';
import 'package:rotanesia_apps/shared/theme.dart';

class MyWalletPage extends StatelessWidget {
  const MyWalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> coinInformation() async {
      return showDialog(
          context: context,
          builder: (BuildContext context) => Container(
                width: 240,
                height: 265,
                child: AlertDialog(
                  backgroundColor: whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  content: SingleChildScrollView(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Align(
                            alignment: Alignment.topRight,
                            child: Icon(
                              Icons.close_rounded,
                              color: blackColor1,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 45,
                        ),
                        Image.asset(
                          'assets/bitmap/image_coin.png',
                          width: 136,
                          height: 139,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Information about coins',
                          style: primaryTextStyle.copyWith(
                              fontSize: 16, fontWeight: medium),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '1 x Share =',
                              style: primaryTextStyle.copyWith(
                                  fontSize: 14, fontWeight: reguler),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              'assets/vector/ic_coin.svg',
                              width: 21,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '10 Coin',
                              style: primaryTextStyle.copyWith(
                                  fontSize: 14, fontWeight: reguler),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '5 x Share =',
                              style: primaryTextStyle.copyWith(
                                  fontSize: 14, fontWeight: reguler),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              'assets/vector/ic_coin.svg',
                              width: 21,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '30 Coin',
                              style: primaryTextStyle.copyWith(
                                  fontSize: 14, fontWeight: reguler),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '8 x Share =',
                              style: primaryTextStyle.copyWith(
                                  fontSize: 14, fontWeight: reguler),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              'assets/vector/ic_coin.svg',
                              width: 21,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '60 Coin',
                              style: primaryTextStyle.copyWith(
                                  fontSize: 14, fontWeight: reguler),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '10 x Share =',
                              style: primaryTextStyle.copyWith(
                                  fontSize: 14, fontWeight: reguler),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset(
                              'assets/vector/ic_coin.svg',
                              width: 21,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '100 Coin',
                              style: primaryTextStyle.copyWith(
                                  fontSize: 14, fontWeight: reguler),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ));
    }

    header() {
      return PreferredSize(
        preferredSize: const Size.fromHeight(74),
        child: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: redColor1,
            ),
            padding: EdgeInsets.only(left: defaultMargin),
          ),
          backgroundColor: whiteColor,
          elevation: 0,
          title: Text(
            'Wishlist',
            style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
          ),
          centerTitle: true,
        ),
      );
    }

    Widget gopayBalance() {
      return Container(
        height: 235,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
              image: AssetImage(
                'assets/bitmap/image_wallet_saldo.png',
              ),
              fit: BoxFit.fill),
        ),
        child: Container(
          margin: EdgeInsets.only(
              left: defaultMargin, right: defaultMargin, top: 30),
          child: Column(
            children: [
              Text(
                'My Gopay Balance',
                style:
                    whiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Rp25.000',
                style:
                    whiteTextStyle.copyWith(fontSize: 36, fontWeight: semibold),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 65,
                        padding: const EdgeInsets.symmetric(
                            vertical: 13, horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: whiteColor,
                        ),
                        child: SvgPicture.asset('assets/vector/ic_pay.svg'),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Pay',
                        style: whiteTextStyle.copyWith(
                            fontSize: 12, fontWeight: reguler),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 65,
                        padding: const EdgeInsets.symmetric(
                            vertical: 13, horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: whiteColor,
                        ),
                        child: SvgPicture.asset('assets/vector/ic_topup.svg'),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Top Up',
                        style: whiteTextStyle.copyWith(
                            fontSize: 12, fontWeight: reguler),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 65,
                        padding: const EdgeInsets.symmetric(
                            vertical: 13, horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: whiteColor,
                        ),
                        child: SvgPicture.asset(
                          'assets/vector/ic_scan.svg',
                          color: redColor1,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Scan',
                        style: whiteTextStyle.copyWith(
                            fontSize: 12, fontWeight: reguler),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }

    Widget gopayTransactionTitle() {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
                left: defaultMargin, right: defaultMargin, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Gopay transaction history',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
                Text(
                  'See All',
                  style:
                      redTextStyle1.copyWith(fontSize: 11, fontWeight: reguler),
                )
              ],
            ),
          ),
        ],
      );
    }

    Widget gopayTransaction() {
      return Container(
        width: double.infinity,
        height: 217,
        color: const Color(0xFFFAFAFA),
        margin: const EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 20),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: whiteColor),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                        Text(
                          'Galilea Rotan',
                          style: secondaryTextStyle.copyWith(
                              fontSize: 12, fontWeight: medium),
                        )
                      ],
                    ),
                  ),
                  Text(
                    '-Rp 150.000',
                    style: redTextStyle1.copyWith(
                        fontSize: 14, fontWeight: semibold),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(
                thickness: 1,
                color: Color(0xffEDEDED),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    padding: const EdgeInsets.all(13),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: redColor1,
                    ),
                    child: SvgPicture.asset(
                      'assets/vector/ic_topup.svg',
                      color: whiteColor,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Top Up Gopay',
                          style: primaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                        ),
                        Text(
                          'via MBanking',
                          style: secondaryTextStyle.copyWith(
                              fontSize: 12, fontWeight: medium),
                        )
                      ],
                    ),
                  ),
                  Text(
                    '+Rp 150.000',
                    style: greenTextStyle.copyWith(
                        fontSize: 14, fontWeight: semibold),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget exchangeCoinsTitle() {
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
                left: defaultMargin, right: defaultMargin, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Exchange Coins',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
                GestureDetector(
                  onTap: coinInformation,
                  child: Text(
                    'Detail',
                    style: redTextStyle1.copyWith(
                        fontSize: 11, fontWeight: reguler),
                  ),
                )
              ],
            ),
          ),
        ],
      );
    }

    Widget exchangeCoin() {
      return Container(
        width: double.infinity,
        height: 400,
        color: const Color(0xFFFAFAFA),
        margin: const EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 20),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: whiteColor),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xffFDE8E0),
                    ),
                    child: SvgPicture.asset(
                      'assets/vector/ic_coin.svg',
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '100 Coin',
                          style: primaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                        ),
                        Text(
                          '10,000 Gopay Balance',
                          style: secondaryTextStyle.copyWith(
                              fontSize: 12, fontWeight: medium),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 69,
                    height: 31,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: redColor1,
                    ),
                    child: Center(
                      child: Text(
                        'Exchange',
                        style: whiteTextStyle.copyWith(
                            fontSize: 12, fontWeight: medium),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(
                thickness: 1,
                color: Color(0xffEDEDED),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xffFDE8E0),
                    ),
                    child: SvgPicture.asset(
                      'assets/vector/ic_coin.svg',
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '300 Coin',
                          style: primaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                        ),
                        Text(
                          '25,000 Gopay Balance',
                          style: secondaryTextStyle.copyWith(
                              fontSize: 12, fontWeight: medium),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 69,
                    height: 31,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: redColor1,
                    ),
                    child: Center(
                      child: Text(
                        'Exchange',
                        style: whiteTextStyle.copyWith(
                            fontSize: 12, fontWeight: medium),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(
                thickness: 1,
                color: Color(0xffEDEDED),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xffFDE8E0),
                    ),
                    child: SvgPicture.asset(
                      'assets/vector/ic_coin.svg',
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '500 Coin',
                          style: primaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                        ),
                        Text(
                          '50,000 Gopay Balance',
                          style: secondaryTextStyle.copyWith(
                              fontSize: 12, fontWeight: medium),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 69,
                    height: 31,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: redColor1,
                    ),
                    child: Center(
                      child: Text(
                        'Exchange',
                        style: whiteTextStyle.copyWith(
                            fontSize: 12, fontWeight: medium),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(
                thickness: 1,
                color: Color(0xffEDEDED),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xffFDE8E0),
                    ),
                    child: SvgPicture.asset(
                      'assets/vector/ic_coin.svg',
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '500 Coin',
                          style: primaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                        ),
                        Text(
                          '50,000 Gopay Balance',
                          style: secondaryTextStyle.copyWith(
                              fontSize: 12, fontWeight: medium),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 69,
                    height: 31,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: redColor1,
                    ),
                    child: Center(
                      child: Text(
                        'Exchange',
                        style: whiteTextStyle.copyWith(
                            fontSize: 12, fontWeight: medium),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: header(),
      body: SafeArea(
          bottom: false,
          child: ListView(
            children: [
              gopayBalance(),
              gopayTransactionTitle(),
              gopayTransaction(),
              exchangeCoinsTitle(),
              exchangeCoin()
            ],
          )),
    );
  }
}
