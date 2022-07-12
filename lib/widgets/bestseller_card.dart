import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rotanesia_apps/models/bestseller.dart';
import 'package:rotanesia_apps/shared/theme.dart';

class BestSellerCard extends StatelessWidget {
  final BestSeller bestseller;
  BestSellerCard(this.bestseller);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 155,
        height: 242,
        color: whiteColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: SizedBox(
                child: Stack(
                  children: [
                    Image.asset(
                      bestseller.imgUrl,
                    ),
                    Container(
                      height: 21,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        color: greenColor1,
                      ),
                      child: Center(
                        child: Text(
                          'HIGHLIGHT',
                          style: whiteTextStyle.copyWith(
                              fontSize: 10, fontWeight: medium),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 8, top: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          bestseller.name,
                          style: primaryTextStyle.copyWith(
                              fontSize: 13, fontWeight: medium),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          bestseller.seller,
                          style: secondaryTextStyle.copyWith(
                              fontSize: 10, fontWeight: reguler),
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.more_vert_outlined,
                    color: grayColor6,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/vector/ic_star.svg',
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        '4.2',
                        style: secondaryTextStyle.copyWith(
                            fontSize: 10, fontWeight: semibold),
                      )
                    ],
                  ),
                  Text(
                    bestseller.price,
                    style: primaryTextStyle.copyWith(
                        fontSize: 12, fontWeight: semibold),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
