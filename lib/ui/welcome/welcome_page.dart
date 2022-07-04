import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rotania_apps/routes/app_page.dart';
import 'package:rotania_apps/shared/theme.dart';
import 'package:get/get.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Image.asset(
          'assets/bitmap/image_welcome.png',
        ),
      );
    }

    Widget signupButton() {
      return Container(
        margin:
            EdgeInsets.only(left: defaultMargin, right: defaultMargin, top: 12),
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed(Routes.signup1);
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return greenColor1;
                  }
                  return redColor1;
                },
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ))),
          child: Text(
            'Create a new account',
            style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: semibold),
          ),
        ),
      );
    }

    Widget signinButton() {
      return Container(
        height: 46,
        width: double.infinity,
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 12,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: whiteColor,
            border: Border.all(color: redColor1)),
        child: Center(
          child: GestureDetector(
            onTap: () {
              Get.toNamed(Routes.signin);
            },
            child: Text(
              'Sign in',
              style: redTextStyle1.copyWith(fontSize: 16, fontWeight: semibold),
            ),
          ),
        ),
      );
    }

    Widget googleButton() {
      return Container(
        height: 46,
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 12,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: whiteColor,
            border: Border.all(color: grayColor3)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/vector/ic_google.svg',
            ),
            const SizedBox(
              width: 7.5,
            ),
            Text(
              'Continue with Google',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: semibold),
            ),
          ],
        ),
      );
    }

    Widget faceebookButton() {
      return Container(
        height: 46,
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 12,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: blueColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/vector/ic_facebook.svg',
            ),
            const SizedBox(
              width: 11,
            ),
            Text(
              'Facebook',
              style:
                  whiteTextStyle.copyWith(fontSize: 16, fontWeight: semibold),
            ),
          ],
        ),
      );
    }

    Widget appleButton() {
      return Container(
        height: 46,
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 12,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: blackColor2,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/vector/ic_apple.svg',
            ),
            const SizedBox(
              width: 11,
            ),
            Text(
              'Apple',
              style:
                  whiteTextStyle.copyWith(fontSize: 16, fontWeight: semibold),
            ),
          ],
        ),
      );
    }

    Widget modalBottomSheet() {
      return Container(
        margin: const EdgeInsets.only(top: 12),
        child: GestureDetector(
          onTap: () {
            showModalBottomSheet(
                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) {
                  return Container(
                    height: 444,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(8)),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 32,
                        ),
                        Text(
                          'Kamu dapat menghubungkan dengan\nsosial media yang lain',
                          style: secondaryTextStyle.copyWith(fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        signupButton(),
                        signinButton(),
                        googleButton(),
                        faceebookButton(),
                        appleButton(),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: Text(
                            'Show less',
                            style: secondaryTextStyle,
                          ),
                        )
                      ],
                    ),
                  );
                });
          },
          child: Text(
            'Show more',
            style: secondaryTextStyle,
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          content(),
          signupButton(),
          signinButton(),
          googleButton(),
          modalBottomSheet(),
        ],
      )),
    );
  }
}
