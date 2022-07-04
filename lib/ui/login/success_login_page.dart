import 'package:flutter/material.dart';
import 'package:rotania_apps/routes/app_page.dart';
import 'package:rotania_apps/shared/theme.dart';
import 'package:get/get.dart';

class SuccessLogin extends StatelessWidget {
  const SuccessLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/bitmap/image_success_login.png',
            ),
            const SizedBox(height: 24),
            Text(
              'Selamat kamu sekarang\nmenjadi Rotanesia',
              style: primaryTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semibold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15),
            Text(
              'Hello, Now you are a part of Rotanesia.\nLet\'s enjoy the application and its features.\nEnjoy :)',
              style: secondaryTextStyle.copyWith(
                fontSize: 12,
                fontWeight: reguler,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    Widget continueButton() {
      return Container(
        margin:
            EdgeInsets.only(left: defaultMargin, right: defaultMargin, top: 38),
        height: 46,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            Get.offNamed(Routes.signin);
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
                ),
              )),
          child: Text(
            'Continue',
            style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: semibold),
          ),
        ),
      );
    }

    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        content(),
        continueButton(),
      ],
    ));
  }
}
