import 'package:flutter/material.dart';
import 'package:rotanesia_apps/shared/theme.dart';

class OnlineEventCard extends StatelessWidget {
  const OnlineEventCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 167,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: redColor3.withOpacity(0.7)),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Online : ',
                    style: goldTextStyle.copyWith(fontSize: 10),
                  ),
                  Text(
                    '123',
                    style: goldTextStyle.copyWith(
                        fontSize: 10, fontWeight: semibold),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
                  child: Image.asset('assets/bitmap/image_online_event1.png'),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: defaultMargin),
                      child: Text(
                        'Rattan Processing for\nHigher Value',
                        style: primaryTextStyle.copyWith(
                            fontWeight: semibold, fontSize: 14),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Forum to find out how processing rattan \nso that it has high value',
                      style: secondaryTextStyle.copyWith(fontSize: 9),
                    )
                  ],
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 120,
                height: 40,
                margin: const EdgeInsets.only(right: 8, bottom: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: redColor1),
                child: Center(
                  child: Text(
                    'Join',
                    style: whiteTextStyle.copyWith(fontSize: 14),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
