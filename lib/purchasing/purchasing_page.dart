import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:rotanesia_apps/routes/app_page.dart';
import 'package:rotanesia_apps/shared/theme.dart';

class PurchasingPage extends StatelessWidget {
  const PurchasingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    header() {
      return PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: redColor1,
            ),
          ),
          leadingWidth: 80,
          backgroundColor: whiteColor,
          elevation: 0,
          title: Text(
            'Pilihan Pembayaran',
            style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
          ),
        ),
      );
    }

    Widget ewallet() {
      return Container(
        height: 425,
        width: double.infinity,
        color: const Color(0xffFAFAFA),
        padding: EdgeInsets.only(
            left: defaultMargin, top: defaultMargin, right: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'E-Wallet',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 360,
              decoration: BoxDecoration(
                  color: whiteColor, borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.only(
                  left: defaultMargin,
                  right: defaultMargin,
                  top: defaultMargin,
                  bottom: defaultMargin),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/bitmap/image_gopay.png',
                        width: 55,
                        height: 21,
                      ),
                      const SizedBox(
                        width: 29,
                      ),
                      Expanded(
                        child: Text(
                          'Gopay Payment',
                          style: primaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                        ),
                      ),
                      Icon(
                        Icons.radio_button_on_rounded,
                        color: redColor1,
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
                      Image.asset(
                        'assets/bitmap/image_ovo.png',
                        width: 57,
                        height: 21,
                      ),
                      const SizedBox(
                        width: 29,
                      ),
                      Expanded(
                        child: Text(
                          'OVO Payment',
                          style: primaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                        ),
                      ),
                      Icon(
                        Icons.radio_button_off_outlined,
                        color: grayColor1,
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
                      Image.asset(
                        'assets/bitmap/image_spay.png',
                        width: 50,
                        height: 20,
                      ),
                      const SizedBox(
                        width: 34,
                      ),
                      Expanded(
                        child: Text(
                          'Shopee Pay',
                          style: primaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                        ),
                      ),
                      Icon(
                        Icons.radio_button_off_outlined,
                        color: grayColor1,
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
                      Image.asset(
                        'assets/bitmap/image_dana.png',
                        width: 56,
                        height: 18,
                      ),
                      const SizedBox(
                        width: 28,
                      ),
                      Expanded(
                        child: Text(
                          'Dana Payment',
                          style: primaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                        ),
                      ),
                      Icon(
                        Icons.radio_button_off_outlined,
                        color: grayColor1,
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
                      const SizedBox(
                        width: 15,
                      ),
                      Image.asset(
                        'assets/bitmap/image_linkaja.png',
                        width: 32,
                        height: 30,
                      ),
                      const SizedBox(
                        width: 38,
                      ),
                      Expanded(
                        child: Text(
                          'LinkAja Payment',
                          style: primaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                        ),
                      ),
                      Icon(
                        Icons.radio_button_off_outlined,
                        color: grayColor1,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget retail() {
      return Container(
        width: double.infinity,
        height: 210,
        color: const Color(0xffFAFAFA),
        margin: const EdgeInsets.only(top: 23),
        padding: EdgeInsets.only(
          left: defaultMargin,
          top: 15,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Retail Store',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 140,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.only(
                  left: defaultMargin,
                  top: defaultMargin,
                  right: defaultMargin),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/bitmap/image_indomaret.png',
                        width: 65,
                        height: 25,
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: Text(
                          'Indomaret',
                          style: primaryTextStyle.copyWith(fontSize: 14),
                        ),
                      ),
                      Icon(
                        Icons.radio_button_off_outlined,
                        color: grayColor1,
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
                      Image.asset(
                        'assets/bitmap/image_alfamart.png',
                        width: 65,
                        height: 25,
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: Text(
                          'Alfamart',
                          style: primaryTextStyle.copyWith(fontSize: 14),
                        ),
                      ),
                      Icon(
                        Icons.radio_button_off_outlined,
                        color: grayColor1,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget virtualAccount() {
      return Container(
        width: double.infinity,
        height: 380,
        color: const Color(0xffFAFAFA),
        margin: const EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(
            left: defaultMargin, top: 15, right: defaultMargin, bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Virtual Account',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 290,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(defaultMargin),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/bitmap/image_mandiri.png',
                        width: 68,
                        height: 26,
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: Text(
                          'Mandiri VA',
                          style: primaryTextStyle.copyWith(fontSize: 14),
                        ),
                      ),
                      Icon(
                        Icons.radio_button_off_outlined,
                        color: grayColor1,
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
                      Image.asset(
                        'assets/bitmap/image_bca.png',
                        width: 60,
                        height: 19,
                      ),
                      const SizedBox(
                        width: 38,
                      ),
                      Expanded(
                        child: Text(
                          'BCA VA',
                          style: primaryTextStyle.copyWith(fontSize: 14),
                        ),
                      ),
                      Icon(
                        Icons.radio_button_off_outlined,
                        color: grayColor1,
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
                      Image.asset(
                        'assets/bitmap/image_bni.png',
                        width: 60,
                        height: 17,
                      ),
                      const SizedBox(
                        width: 38,
                      ),
                      Expanded(
                        child: Text(
                          'BNI VA',
                          style: primaryTextStyle.copyWith(fontSize: 14),
                        ),
                      ),
                      Icon(
                        Icons.radio_button_off_outlined,
                        color: grayColor1,
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
                      Image.asset(
                        'assets/bitmap/image_bri.png',
                        width: 76,
                        height: 26,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Text(
                          'BRI VA',
                          style: primaryTextStyle.copyWith(fontSize: 14),
                        ),
                      ),
                      Icon(
                        Icons.radio_button_off_outlined,
                        color: grayColor1,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget payDirect() {
      return Container(
        width: double.infinity,
        height: 134,
        color: const Color(0xffFAFAFA),
        margin: const EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(
          left: defaultMargin,
          top: 15,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Retail Store',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 65,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(10),
              ),
              padding:
                  EdgeInsets.only(left: defaultMargin, right: defaultMargin),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/vector/ic_pay_currir.svg',
                  ),
                  const SizedBox(
                    width: 63,
                  ),
                  Expanded(
                    child: Text(
                      'Pay to Courier',
                      style: primaryTextStyle.copyWith(fontSize: 14),
                    ),
                  ),
                  Icon(
                    Icons.radio_button_off_outlined,
                    color: grayColor1,
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget footer() {
      return Container(
        height: 180,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(10),
              right: Radius.circular(10),
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 3,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            color: whiteColor),
        child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              margin: const EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: whiteColor,
                  border: Border.all(color: redColor1)),
              child: Center(
                child: GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/vector/ic_promo.svg',
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Text(
                          'Diskon Rotania 50%',
                          style: primaryTextStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: grayColor4,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 27,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Price',
                      style: secondaryTextStyle.copyWith(
                          fontSize: 14, fontWeight: medium),
                    ),
                    Text(
                      'Rp 150.000,-',
                      style: redTextStyle2.copyWith(
                        fontSize: 16,
                        fontWeight: semibold,
                      ),
                    )
                  ],
                ),
                Container(
                  height: 50,
                  width: 153,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: redColor1,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.offNamed(Routes.successPurchase);
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return greenColor1;
                            }
                            return redColor1;
                          },
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ))),
                    child: Text(
                      'Pay',
                      style: whiteTextStyle.copyWith(
                          fontSize: 14, fontWeight: medium),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: header(),
      bottomNavigationBar: footer(),
      body: ListView(
        children: [ewallet(), retail(), virtualAccount(), payDirect()],
      ),
    );
  }
}
