import 'package:flutter/material.dart';
import 'package:rotanesia_apps/routes/app_page.dart';
import 'package:rotanesia_apps/shared/theme.dart';
import 'package:get/get.dart';

class SuccessPurchase extends StatelessWidget {
  const SuccessPurchase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/bitmap/image_success_register.png',
                width: 331,
                height: 246,
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                'Congratulations you have complete payment',
                style: primaryTextStyle.copyWith(
                    fontSize: 20, fontWeight: semibold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Thank you for supporting rattan products in\nIndonesia. Let\'s continue to support Indonesian rattan\nproducts so that they become more global :)',
                style: secondaryTextStyle.copyWith(
                    fontSize: 12, fontWeight: reguler),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 55,
              ),
              Container(
                height: 46,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: redColor1,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Get.offNamed(Routes.main);
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
                        borderRadius: BorderRadius.circular(10),
                      ))),
                  child: Text(
                    'Back to Home',
                    style: whiteTextStyle.copyWith(
                        fontSize: 16, fontWeight: semibold),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: content(),
    );
  }
}
