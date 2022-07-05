import 'package:flutter/material.dart';
import 'package:rotanesia_apps/routes/app_page.dart';
import 'package:rotanesia_apps/shared/theme.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget logo() {
      return Container(
        margin: EdgeInsets.only(left: defaultMargin),
        child: Image.asset(
          'assets/bitmap/logo_rotanesia.png',
          width: 83,
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(top: 38, left: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome',
              style: redTextStyle1.copyWith(
                fontSize: 32,
                fontWeight: medium,
              ),
            ),
            Row(
              children: [
                Text(
                  'to ',
                  style:
                      redTextStyle1.copyWith(fontSize: 32, fontWeight: medium),
                ),
                Text(
                  'Rotanesia',
                  style: redTextStyle1.copyWith(
                    fontSize: 32,
                    fontWeight: semibold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Berawal dari Indonesia untuk\nRotan yang mendunia',
              style: redTextStyle2.copyWith(
                fontSize: 12,
                fontWeight: medium,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.onboarding1);
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: redColor1,
                ),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: whiteColor,
                  size: 18,
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget footer() {
      return Image.asset(
        'assets/bitmap/image_splash.png',
      );
    }

    return Scaffold(
        backgroundColor: whiteColor,
        body: SafeArea(
            bottom: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                logo(),
                content(),
                const Spacer(),
                footer(),
              ],
            )));
  }
}
