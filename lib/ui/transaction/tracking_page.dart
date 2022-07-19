import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:rotanesia_apps/shared/theme.dart';

class TrackingPage extends StatelessWidget {
  const TrackingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    header() {
      return PreferredSize(
        preferredSize: const Size.fromHeight(64),
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
          elevation: 1,
          title: Text(
            'Tracking',
            style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
          ),
          centerTitle: true,
        ),
      );
    }

    Widget data() {
      return Container(
        height: 178,
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delivery date',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: reguler,
                      ),
                    ),
                    Text(
                      'March 01, 2022',
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: medium,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shipper/Seller',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: reguler,
                      ),
                    ),
                    Text(
                      'Galilea Rotan, Bandung,\nJawa Barat',
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: medium,
                      ),
                    )
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Service Code',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: reguler,
                      ),
                    ),
                    Text(
                      'REG',
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: medium,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Buyer',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: reguler,
                      ),
                    ),
                    Text(
                      'Nico Kristiawan, Bandung,\nJawa Barat',
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: medium,
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget divider() {
      return Divider(
        thickness: 2,
        color: const Color(0xFFDADCDD).withOpacity(0.7),
      );
    }

    Widget shipping() {
      return Container(
        padding:
            EdgeInsets.only(right: defaultMargin, top: 20, left: defaultMargin),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Status',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: reguler,
                      ),
                    ),
                    Text(
                      'Shipping',
                      style: redTextStyle1.copyWith(
                        fontSize: 14,
                        fontWeight: medium,
                      ),
                    )
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'No Receipt',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: reguler,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '121343434454',
                          style: redTextStyle1.copyWith(
                            fontSize: 14,
                            fontWeight: medium,
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        SvgPicture.asset('assets/vector/ic_copy.svg')
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget statusDelivery() {
      return Column(
        children: [
          Container(
              margin: EdgeInsets.only(left: 35, right: defaultMargin, top: 30),
              child: Stack(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/vector/ic_delivery_status.svg'),
                      const SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'February 28, 2022',
                            style: redTextStyle1.copyWith(
                                fontSize: 14, fontWeight: medium),
                          ),
                          Text(
                            'Goods are processed at the Sorting\nCenter [Bandung]',
                            style: secondaryTextStyle.copyWith(
                                fontSize: 14, fontWeight: reguler),
                          )
                        ],
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      '07.30 WIB',
                      style: secondaryTextStyle.copyWith(
                          fontSize: 12, fontWeight: reguler),
                    ),
                  ),
                ],
              )),
          Container(
              margin: EdgeInsets.only(left: 35, right: defaultMargin, top: 30),
              child: Stack(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/vector/ic_delivery_status.svg',
                          color: const Color(0xff8e8e8e)),
                      const SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'February 27, 2022',
                            style: redTextStyle1.copyWith(
                                fontSize: 14, fontWeight: medium),
                          ),
                          Text(
                            'Goods received at the Sorting\nCenter [Bandung]',
                            style: secondaryTextStyle.copyWith(
                                fontSize: 14, fontWeight: reguler),
                          )
                        ],
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      '05.30 WIB',
                      style: secondaryTextStyle.copyWith(
                          fontSize: 12, fontWeight: reguler),
                    ),
                  ),
                ],
              )),
          Container(
              margin: EdgeInsets.only(left: 35, right: defaultMargin, top: 30),
              child: Stack(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/vector/ic_delivery_status.svg',
                          color: const Color(0xff8e8e8e)),
                      const SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'February 26, 2022',
                            style: redTextStyle1.copyWith(
                                fontSize: 14, fontWeight: medium),
                          ),
                          Text(
                            'Tracking Valid',
                            style: secondaryTextStyle.copyWith(
                                fontSize: 14, fontWeight: reguler),
                          )
                        ],
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      '07.30 WIB',
                      style: secondaryTextStyle.copyWith(
                          fontSize: 12, fontWeight: reguler),
                    ),
                  ),
                ],
              )),
          Container(
              margin: EdgeInsets.only(left: 35, right: defaultMargin, top: 30),
              child: Stack(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/vector/ic_delivery_status.svg',
                          color: const Color(0xff8e8e8e)),
                      const SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'February 26, 2022',
                            style: redTextStyle1.copyWith(
                                fontSize: 14, fontWeight: medium),
                          ),
                          Text(
                            'The receipt number has been issued',
                            style: secondaryTextStyle.copyWith(
                                fontSize: 14, fontWeight: reguler),
                          )
                        ],
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      '07.30 WIB',
                      style: secondaryTextStyle.copyWith(
                          fontSize: 12, fontWeight: reguler),
                    ),
                  ),
                ],
              )),
        ],
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: header(),
      body: SafeArea(
          child: ListView(
        children: [
          data(),
          divider(),
          shipping(),
          statusDelivery(),
        ],
      )),
    );
  }
}
