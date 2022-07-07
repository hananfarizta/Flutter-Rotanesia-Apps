import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rotanesia_apps/shared/theme.dart';

class ThreadForum extends StatelessWidget {
  const ThreadForum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 30,
      ),
      padding: EdgeInsets.all(defaultMargin),
      height: 625,
      width: double.infinity,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(20),
            right: Radius.circular(20),
          ),
          color: Color(0xffF5F5F5)),
      child: Column(
        children: [
          Container(
            height: 261,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: whiteColor),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/bitmap/image_thread_forum.png',
                      width: 50,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lucinta Luna',
                            style: primaryTextStyle.copyWith(
                                fontSize: 14, fontWeight: semibold),
                          ),
                          Text(
                            '19 Feb 2022 - 09.30 AM',
                            style: secondaryTextStyle.copyWith(
                                fontSize: 12, fontWeight: reguler),
                          ),
                        ],
                      ),
                    ),
                    const Align(
                      alignment: Alignment.bottomCenter,
                      child: Icon(
                        Icons.more_horiz_rounded,
                        color: Color(0xffBEBEBE),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 28,
                ),
                Text(
                  'Is there any info about the type of rattan wallet with a strong material? I have searched in various stores but they are still empty and have not been re-stocked. Thankyou everyone !',
                  style: primaryTextStyle.copyWith(
                      fontSize: 11, fontWeight: reguler),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Text(
                      '#ask',
                      style: redTextStyle1.copyWith(fontSize: 11),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '#rattan',
                      style: redTextStyle1.copyWith(fontSize: 11),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '#Wallet',
                      style: redTextStyle1.copyWith(fontSize: 11),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/vector/ic_like.svg',
                              color: redColor1,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              '1.920',
                              style: secondaryTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: reguler,
                                  color: const Color(0xffBBBCBC)),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/vector/ic_comment.svg',
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              '1.920',
                              style: secondaryTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: reguler,
                                  color: const Color(0xffBBBCBC)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SvgPicture.asset('assets/vector/ic_share.svg')
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 261,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: whiteColor),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/bitmap/image_thread_forum.png',
                      width: 50,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lucinta Luna',
                            style: primaryTextStyle.copyWith(
                                fontSize: 14, fontWeight: semibold),
                          ),
                          Text(
                            '19 Feb 2022 - 09.30 AM',
                            style: secondaryTextStyle.copyWith(
                                fontSize: 12, fontWeight: reguler),
                          ),
                        ],
                      ),
                    ),
                    const Align(
                      alignment: Alignment.bottomCenter,
                      child: Icon(
                        Icons.more_horiz_rounded,
                        color: Color(0xffBEBEBE),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 28,
                ),
                Text(
                  'Is there any info about the type of rattan wallet with a strong material? I have searched in various stores but they are still empty and have not been re-stocked. Thankyou everyone !',
                  style: primaryTextStyle.copyWith(
                      fontSize: 11, fontWeight: reguler),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Text(
                      '#ask',
                      style: redTextStyle1.copyWith(fontSize: 11),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '#rattan',
                      style: redTextStyle1.copyWith(fontSize: 11),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '#Wallet',
                      style: redTextStyle1.copyWith(fontSize: 11),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/vector/ic_like.svg',
                              color: redColor1,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              '1.920',
                              style: secondaryTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: reguler,
                                  color: const Color(0xffBBBCBC)),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/vector/ic_comment.svg',
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              '1.920',
                              style: secondaryTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: reguler,
                                  color: const Color(0xffBBBCBC)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SvgPicture.asset('assets/vector/ic_share.svg')
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
