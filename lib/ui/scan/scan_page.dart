import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rotanesia_apps/routes/app_page.dart';
import 'package:rotanesia_apps/shared/theme.dart';
import 'package:get/get.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> showSuccessDialog() async {
      return showDialog(
          context: context,
          builder: (BuildContext context) => SizedBox(
                width: MediaQuery.of(context).size.width - (2 * defaultMargin),
                child: AlertDialog(
                  backgroundColor: whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  content: SingleChildScrollView(
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          'assets/vector/ic_success.svg',
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Scan Successful',
                          style: primaryTextStyle.copyWith(
                              fontSize: 16, fontWeight: semibold),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 38,
                              width: 112,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: whiteColor,
                                  border: Border.all(color: redColor4)),
                              child: Center(
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    'Cancel',
                                    style: redTextStyle1.copyWith(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.offNamed(Routes.cart);
                              },
                              child: Container(
                                height: 38,
                                width: 112,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: greenColor1,
                                    border: Border.all(color: greenColor1)),
                                child: Center(
                                  child: Text(
                                    'Pay',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ));
    }

    Widget scan() {
      return Stack(
        children: [
          SizedBox(
            height: 569,
            width: double.infinity,
            child: GestureDetector(
              onTap: () {
                showSuccessDialog();
              },
              child: Image.asset(
                'assets/bitmap/image_scan.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: defaultMargin),
              child: Icon(
                Icons.close_rounded,
                color: whiteColor,
                size: 40,
              ),
            ),
          )
        ],
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: defaultMargin,
        ),
        child: Text(
          'Just scan the QR code for quick access to various features such as payments and view product details',
          style: primaryTextStyle,
          textAlign: TextAlign.center,
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [scan(), content()],
        ),
      ),
    );
  }
}
