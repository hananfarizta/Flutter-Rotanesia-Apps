import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rotania_apps/routes/app_page.dart';
import 'package:rotania_apps/shared/theme.dart';

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        width: double.infinity,
        height: 467,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: redColor3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Image.asset(
              'assets/bitmap/image_onboarding3.png',
              height: 244,
              width: double.infinity,
            ),
            const SizedBox(
              height: 64,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: grayColor2),
                ),
                const SizedBox(
                  width: 6,
                ),
                Container(
                  width: 10,
                  height: 10,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: grayColor2),
                ),
                const SizedBox(
                  width: 6,
                ),
                Container(
                  width: 10,
                  height: 10,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: redColor1),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Are you ready to do it?\nSo next Rotanesia?',
              style: primaryTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semibold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'What are you waiting for, for you rattan cuss\nlovers, immediately try the rotania application and\nenjoy the convenience of transactions and\na guaranteed forum',
              style: secondaryTextStyle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    Widget nextButton() {
      return Container(
        margin: EdgeInsets.only(
            left: defaultMargin, right: defaultMargin, bottom: defaultMargin),
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed(Routes.welcome);
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
            'Get Started',
            style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: semibold),
          ),
        ),
      );
    }

    return Scaffold(
        backgroundColor: whiteColor,
        body: SafeArea(
            child: Column(
          children: [content(), title(), const Spacer(), nextButton()],
        )));
  }
}
