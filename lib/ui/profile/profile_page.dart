import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rotanesia_apps/shared/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 22),
        child: Center(
          child: Text(
            'User Profile',
            style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
          ),
        ),
      );
    }

    Widget profile() {
      return Container(
        margin:
            EdgeInsets.only(left: defaultMargin, right: defaultMargin, top: 32),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/bitmap/image_profile.png',
                  width: 75,
                ),
                const SizedBox(
                  width: 26,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nico Kristiawan',
                        style: primaryTextStyle.copyWith(
                            fontSize: 16, fontWeight: medium),
                      ),
                      Text(
                        '0895047898773',
                        style: secondaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: reguler,
                        ),
                      ),
                      Text(
                        'Bandung, Jawa Barat',
                        style: secondaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
                SvgPicture.asset(
                  'assets/vector/ic_edit_profile.svg',
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            const Divider(
              thickness: 1,
              color: Color(0xffEDEDED),
            )
          ],
        ),
      );
    }

    Widget signinButton() {
      return Container(
        height: 60,
        width: double.infinity,
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 12,
        ),
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: whiteColor,
            border: Border.all(color: blackColor1)),
        child: Center(
          child: GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                Image.asset(
                  'assets/bitmap/image_gopay.png',
                  height: 20,
                  width: 62,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text(
                    'Rp 1.250.000,-',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: semibold),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 30,
                  width: 1,
                  color: grayColor4.withOpacity(0.5),
                ),
                const SizedBox(
                  width: 10,
                ),
                SvgPicture.asset('assets/vector/ic_coin.svg'),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  '1000 coin',
                  style: primaryTextStyle,
                )
              ],
            ),
          ),
        ),
      );
    }

    Widget activity() {
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
              'My activity',
              style:
                  secondaryTextStyle.copyWith(fontWeight: medium, fontSize: 14),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SvgPicture.asset('assets/vector/ic_transaction.svg'),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Text(
                    'Transaction',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: grayColor4,
                  size: 20,
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
                SvgPicture.asset('assets/vector/ic_wishlist.svg'),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Text(
                    'Wishlist',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: grayColor4,
                  size: 20,
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
                SvgPicture.asset('assets/vector/ic_telephone.svg'),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Text(
                    'Contact for our Business',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: grayColor4,
                  size: 20,
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget umum() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Umum',
              style:
                  secondaryTextStyle.copyWith(fontWeight: medium, fontSize: 14),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SvgPicture.asset('assets/vector/ic_notification_settings.svg'),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Text(
                    'Notification Settings',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: grayColor4,
                  size: 20,
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
                SvgPicture.asset('assets/vector/ic_key.svg'),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Text(
                    'Change Password',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: grayColor4,
                  size: 20,
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
                SvgPicture.asset('assets/vector/ic_language.svg'),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Text(
                    'Language Choice',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: grayColor4,
                  size: 20,
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
                SvgPicture.asset('assets/vector/ic_payment.svg'),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Text(
                    'Payment method',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: grayColor4,
                  size: 20,
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
                SvgPicture.asset('assets/vector/ic_privacy.svg'),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Text(
                    'Privacy Policy',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: grayColor4,
                  size: 20,
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
                SvgPicture.asset('assets/vector/ic_logout.svg'),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Text(
                    'Log Out',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: grayColor4,
                  size: 20,
                )
              ],
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
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [header(), profile(), signinButton(), activity(), umum()],
        ),
      ),
    );
  }
}
