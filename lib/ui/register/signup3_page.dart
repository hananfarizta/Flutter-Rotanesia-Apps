import 'package:flutter/material.dart';
import 'package:rotanesia_apps/routes/app_page.dart';
import 'package:rotanesia_apps/shared/theme.dart';
import 'package:get/get.dart';

class SignUp3 extends StatelessWidget {
  const SignUp3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 20, left: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: redColor1,
              ),
            ),
            const SizedBox(
              height: 33,
            ),
            Text(
              'Sign Up',
              style: primaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semibold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  'Do you have account?',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: reguler,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Login',
                  style: redTextStyle1.copyWith(
                    fontSize: 12,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Padding(
        padding:
            EdgeInsets.only(left: defaultMargin, right: defaultMargin, top: 44),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: primaryTextStyle,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: '•••••••••••',
                  hintStyle: primaryTextStyle,
                  suffixIcon: const Icon(
                    Icons.remove_red_eye_outlined,
                    size: 25,
                  )),
              obscureText: true,
            ),
          ],
        ),
      );
    }

    Widget confirmPasswordInput() {
      return Padding(
        padding:
            EdgeInsets.only(left: defaultMargin, right: defaultMargin, top: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Confirm Password',
              style: primaryTextStyle,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: '•••••••••••',
                  hintStyle: primaryTextStyle,
                  suffixIcon: const Icon(
                    Icons.remove_red_eye_outlined,
                    size: 25,
                  )),
              obscureText: true,
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
            Get.toNamed(Routes.successRegister);
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
        body: SafeArea(
            child: Column(
      children: [
        header(),
        passwordInput(),
        confirmPasswordInput(),
        continueButton(),
      ],
    )));
  }
}
