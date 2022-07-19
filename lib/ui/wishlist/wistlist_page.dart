import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:rotanesia_apps/routes/app_page.dart';
import 'package:rotanesia_apps/shared/theme.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    header() {
      return PreferredSize(
        preferredSize: const Size.fromHeight(69),
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
          actions: [
            IconButton(
              onPressed: () {
                Get.toNamed(Routes.cart);
              },
              icon: SvgPicture.asset(
                'assets/vector/ic_cart.svg',
              ),
              padding: EdgeInsets.only(right: defaultMargin),
            )
          ],
          centerTitle: true,
        ),
      );
    }

    Widget searchButtonInput() {
      return Container(
        margin: EdgeInsets.only(left: defaultMargin, right: defaultMargin),
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
                      hintText: 'Cari wishlist kamu',
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

    Widget content() {
      return Container(
        width: double.infinity,
        height: 289,
        color: const Color(0xffFAFAFA),
        margin: const EdgeInsets.only(top: 29),
        padding: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 20),
        child: Container(
          padding: EdgeInsets.only(
              top: 20, left: defaultMargin, right: defaultMargin),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 9),
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
                padding: const EdgeInsets.only(left: 9),
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
              SizedBox(
                height: defaultMargin,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      'assets/vector/ic_trash.svg',
                    ),
                    Container(
                      height: 33,
                      width: 181,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: redColor1),
                      child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed(Routes.cart);
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
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/vector/ic_plus.svg',
                              width: 20,
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              'Keranjang',
                              style: whiteTextStyle.copyWith(
                                  fontSize: 14, fontWeight: medium),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: header(),
      body: SafeArea(
          child: ListView(
        children: [searchButtonInput(), content()],
      )),
    );
  }
}
