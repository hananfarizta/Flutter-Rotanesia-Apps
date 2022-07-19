import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rotanesia_apps/routes/app_page.dart';
import 'package:rotanesia_apps/shared/theme.dart';
import 'package:get/get.dart';

class DeliveryPage extends StatelessWidget {
  const DeliveryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> lockedFeature() async {
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
                        Image.asset(
                          'assets/bitmap/image_locked.png',
                          width: 108,
                          height: 82,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          'Features still locked',
                          style: primaryTextStyle.copyWith(
                              fontSize: 16, fontWeight: semibold),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Due to the COVID-19 pandemic\nthen temporarily features\nwe are still locked',
                          style: primaryTextStyle.copyWith(
                              fontSize: 11, fontWeight: reguler),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ));
    }

    Future<void> shippingSupport() async {
      return showDialog(
          context: context,
          builder: (BuildContext context) => SizedBox(
                width: 325,
                height: 446,
                child: AlertDialog(
                  backgroundColor: whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  content: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Shipping Support',
                              style: primaryTextStyle.copyWith(
                                  fontSize: 16, fontWeight: semibold),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: const Icon(
                                Icons.close_rounded,
                                color: Color(0xff0C1A30),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(
                          thickness: 1,
                          color: Color(0xffEDEDED),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/bitmap/image_jnt.png',
                              width: 80,
                              height: 30,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'J&T',
                                  style: primaryTextStyle.copyWith(
                                      fontSize: 14, fontWeight: medium),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Reguler, Express',
                                  style: secondaryTextStyle.copyWith(
                                      fontSize: 12, fontWeight: reguler),
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          thickness: 1,
                          color: Color(0xffEDEDED),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/bitmap/image_jne.png',
                              width: 80,
                              height: 30,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'JNE',
                                  style: primaryTextStyle.copyWith(
                                      fontSize: 14, fontWeight: medium),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Reguler, Express',
                                  style: secondaryTextStyle.copyWith(
                                      fontSize: 12, fontWeight: reguler),
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          thickness: 1,
                          color: Color(0xffEDEDED),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/bitmap/image_dhl.png',
                              width: 69,
                              height: 69,
                            ),
                            const SizedBox(
                              width: 21,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'DHL',
                                  style: primaryTextStyle.copyWith(
                                      fontSize: 14, fontWeight: medium),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Reguler, Express',
                                  style: secondaryTextStyle.copyWith(
                                      fontSize: 12, fontWeight: reguler),
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          thickness: 1,
                          color: Color(0xffEDEDED),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/bitmap/image_gosend.png',
                              width: 62,
                              height: 32,
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Gosend',
                                  style: primaryTextStyle.copyWith(
                                      fontSize: 14, fontWeight: medium),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Reguler, Express',
                                  style: secondaryTextStyle.copyWith(
                                      fontSize: 12, fontWeight: reguler),
                                )
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          thickness: 1,
                          color: Color(0xffEDEDED),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: lockedFeature,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                'assets/bitmap/image_pickup.png',
                                width: 39,
                                height: 39,
                              ),
                              const SizedBox(
                                width: 36,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Pickup',
                                    style: secondaryTextStyle.copyWith(
                                        fontSize: 14, fontWeight: medium),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Take it to the Craftsman',
                                    style: secondaryTextStyle.copyWith(
                                        fontSize: 12, fontWeight: reguler),
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 17,
                              ),
                              SvgPicture.asset('assets/vector/ic_lock.svg')
                            ],
                          ),
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
            'Delivery',
            style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
          ),
        ),
      );
    }

    Widget shipping() {
      return Container(
        width: double.infinity,
        height: 114,
        padding: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 15),
        color: const Color(0xffFAFAFA),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shipping address',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
                Text(
                  'Change address',
                  style: redTextStyle1.copyWith(fontSize: 12),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Nico Kristiawan (0895047898773)',
              style: secondaryTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Griya Bandung Asri Blok E No 85, Bojongsoang',
              overflow: TextOverflow.ellipsis,
              style: secondaryTextStyle.copyWith(
                fontSize: 13,
              ),
            )
          ],
        ),
      );
    }

    Widget listItems() {
      return Container(
        width: double.infinity,
        height: 264,
        color: const Color(0xffFAFAFA),
        padding: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 15),
        margin: const EdgeInsets.only(top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'List of items',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 195,
              padding: EdgeInsets.only(
                  left: defaultMargin, right: defaultMargin, top: 13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: whiteColor,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 9),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Galilea Rotan',
                              style: primaryTextStyle.copyWith(
                                  fontSize: 14, fontWeight: medium),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Official Store',
                                  style: primaryTextStyle.copyWith(
                                      fontSize: 12, fontWeight: reguler),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                SvgPicture.asset(
                                    'assets/vector/ic_official_store.svg')
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 37,
                          width: 1,
                          color: grayColor1,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bandung, Jawa Barat',
                              style: secondaryTextStyle.copyWith(
                                  color: const Color(0xff8E8E8E),
                                  fontSize: 10,
                                  fontWeight: medium),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset('assets/vector/ic_star.svg'),
                                const SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  '4.2',
                                  style: primaryTextStyle.copyWith(
                                      fontSize: 14, fontWeight: medium),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 9),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/bitmap/image_wallet.png',
                          width: 70,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rattan Wallet',
                              style: primaryTextStyle.copyWith(
                                  fontSize: 14, fontWeight: medium),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Small, Model 1',
                              style: primaryTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: reguler,
                                  color: const Color(0xff8E8E8E)),
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
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget delivery() {
      return Container(
        width: double.infinity,
        height: 119,
        color: const Color(0xffFAFAFA),
        margin: const EdgeInsets.only(top: 10),
        padding: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Delivery',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: shippingSupport,
              child: Container(
                width: double.infinity,
                height: 50,
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 5, bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: whiteColor,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/bitmap/image_jnt.png',
                      width: 80,
                      height: 30,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'J&T',
                            style: primaryTextStyle.copyWith(
                                fontSize: 14, fontWeight: medium),
                          ),
                          Text(
                            'Reguler, Express',
                            style: secondaryTextStyle.copyWith(fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: grayColor4,
                    )
                  ],
                ),
              ),
            )
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
                      'Rp 90.000,-',
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
                      Get.toNamed(Routes.purchasing);
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
                      'Select Payment',
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

    Widget priceSummary() {
      return Container(
        width: double.infinity,
        height: 264,
        color: const Color(0xffFAFAFA),
        padding:
            EdgeInsets.only(left: defaultMargin, top: 20, right: defaultMargin),
        margin: const EdgeInsets.only(top: 10, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Price Summary',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 195,
              width: double.infinity,
              padding: EdgeInsets.only(
                  left: defaultMargin, right: defaultMargin, top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: whiteColor,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Product Price',
                        style: primaryTextStyle.copyWith(fontSize: 12),
                      ),
                      Text(
                        'Rp 150.000',
                        style: primaryTextStyle.copyWith(
                            fontWeight: semibold, fontSize: 12),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Vouchers/Promotions',
                        style: primaryTextStyle.copyWith(fontSize: 12),
                      ),
                      Text(
                        'Rp 50.000',
                        style: primaryTextStyle.copyWith(
                            fontWeight: semibold, fontSize: 12),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shipping costs',
                        style: primaryTextStyle.copyWith(
                            fontSize: 12, fontWeight: reguler),
                      ),
                      Text(
                        'Rp 15.000',
                        style: primaryTextStyle.copyWith(
                            fontWeight: semibold, fontSize: 12),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const Divider(
                    thickness: 1,
                    color: Color(0xffEDEDED),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total payment',
                        style: primaryTextStyle.copyWith(
                            fontSize: 12, fontWeight: semibold),
                      ),
                      Text(
                        'Rp 90.000',
                        style: primaryTextStyle.copyWith(
                            fontWeight: semibold, fontSize: 12),
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

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: header(),
      bottomNavigationBar: footer(),
      body: ListView(
        children: [
          shipping(),
          listItems(),
          delivery(),
          priceSummary(),
        ],
      ),
    );
  }
}
