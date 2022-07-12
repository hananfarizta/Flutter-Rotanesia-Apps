import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rotanesia_apps/shared/theme.dart';

class MyCartPage extends StatefulWidget {
  const MyCartPage({Key? key}) : super(key: key);

  @override
  State<MyCartPage> createState() => _MyCartPageState();
}

class _MyCartPageState extends State<MyCartPage> {
  bool value = true;

  @override
  Widget build(BuildContext context) {
    header() {
      return PreferredSize(
        preferredSize: const Size.fromHeight(74),
        child: AppBar(
          leading: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: redColor1,
          ),
          leadingWidth: 80,
          backgroundColor: whiteColor,
          elevation: 0,
          title: Text(
            'My Cart',
            style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        height: 355,
        color: const Color(0xffFAFAFA),
        padding: EdgeInsets.all(defaultMargin),
        child: Container(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Checkbox(
                    value: value,
                    onChanged: (value) {
                      setState(() {
                        this.value = true;
                      });
                    },
                    activeColor: redColor1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  const SizedBox(
                    width: 17,
                  ),
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
                  Checkbox(
                    value: value,
                    onChanged: (value) {
                      setState(() {
                        this.value = true;
                      });
                    },
                    activeColor: redColor1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
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
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                height: 38,
                decoration: BoxDecoration(
                    color: const Color(0xffFAFAFA),
                    borderRadius: BorderRadius.circular(6)),
                child: Center(
                  child: TextFormField(
                    style: primaryTextStyle,
                    decoration: InputDecoration.collapsed(
                        hintText: 'Enter your notes',
                        hintStyle: grayTextStyle.copyWith(
                            fontSize: 12, fontWeight: medium)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sign in wishlist',
                    style: secondaryTextStyle.copyWith(
                        fontSize: 12, color: const Color(0xff9B9B9B)),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/vector/ic_trash.svg',
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset(
                        'assets/vector/ic_min.svg',
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        '1',
                        style: primaryTextStyle.copyWith(
                            fontSize: 14, fontWeight: medium),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset(
                        'assets/vector/ic_plus.svg',
                        color: redColor1,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
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
                          'Save more with discounts',
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
                  child: Center(
                    child: Text(
                      'Buy (1)',
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                      ),
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
        body: Column(
          children: [
            content(),
            const Spacer(),
            footer(),
          ],
        ));
  }
}
