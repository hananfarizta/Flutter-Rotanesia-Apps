import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rotania_apps/shared/theme.dart';
import 'package:rotania_apps/ui/forum/forum_page.dart';
import 'package:rotania_apps/ui/home/home_page.dart';
import 'package:rotania_apps/ui/profile/profile_page.dart';
import 'package:rotania_apps/ui/trending/trending_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget scanButton() {
      return FloatingActionButton(
        backgroundColor: redColor1,
        onPressed: () {},
        child: SvgPicture.asset(
          'assets/vector/ic_scan.svg',
          width: 24,
        ),
      );
    }

    Widget customBottomNav() {
      return BottomNavigationBar(
          backgroundColor: whiteColor,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              print(value);
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: currentIndex == 0
                    ? Container(
                        margin: const EdgeInsets.only(
                          top: 12,
                        ),
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              'assets/vector/ic_home.svg',
                              width: 24,
                              color: redColor1,
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Home',
                              style: redTextStyle1.copyWith(
                                  fontSize: 13, fontWeight: medium),
                            )
                          ],
                        ),
                      )
                    : Container(
                        margin: const EdgeInsets.only(top: 12),
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              'assets/vector/ic_home2.svg',
                              width: 24,
                              color: grayColor6,
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Home',
                              style: bottomNavBarTextStyle.copyWith(
                                  fontSize: 13, fontWeight: medium),
                            )
                          ],
                        ),
                      ),
                label: ''),
            BottomNavigationBarItem(
                icon: currentIndex == 1
                    ? Container(
                        margin: const EdgeInsets.only(top: 12),
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              'assets/vector/ic_trending2.svg',
                              width: 24,
                              color: redColor1,
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Trending',
                              style: redTextStyle1.copyWith(
                                  fontSize: 13, fontWeight: medium),
                            )
                          ],
                        ),
                      )
                    : Container(
                        margin: const EdgeInsets.only(top: 12),
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              'assets/vector/ic_trending.svg',
                              width: 24,
                              color: grayColor6,
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Trending',
                              style: bottomNavBarTextStyle.copyWith(
                                  fontSize: 13, fontWeight: medium),
                            )
                          ],
                        ),
                      ),
                label: ''),
            BottomNavigationBarItem(
              icon: currentIndex == 2
                  ? Container(
                      margin: const EdgeInsets.only(top: 12),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            'assets/vector/ic_forum2.svg',
                            width: 24,
                            color: redColor1,
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Forum',
                            style: redTextStyle1.copyWith(
                                fontSize: 13, fontWeight: medium),
                          )
                        ],
                      ),
                    )
                  : Container(
                      margin: const EdgeInsets.only(top: 12),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            'assets/vector/ic_forum.svg',
                            width: 24,
                            color: grayColor6,
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Forum',
                            style: bottomNavBarTextStyle.copyWith(
                                fontSize: 13, fontWeight: medium),
                          )
                        ],
                      ),
                    ),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: currentIndex == 3
                    ? Container(
                        margin: const EdgeInsets.only(top: 12),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/bitmap/image_profile.png',
                              width: 24,
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Profile',
                              style: redTextStyle1.copyWith(
                                  fontSize: 13, fontWeight: medium),
                            )
                          ],
                        ),
                      )
                    : Container(
                        margin: const EdgeInsets.only(top: 12),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/bitmap/image_profile2.png',
                              width: 24,
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Profile',
                              style: bottomNavBarTextStyle.copyWith(
                                  fontSize: 13, fontWeight: medium),
                            )
                          ],
                        ),
                      ),
                label: ''),
          ]);
    }

    body() {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const TrendingPage();
        case 2:
          return const ForumPage();
        case 3:
          return const ProfilePage();
        default:
          return body();
      }
    }

    return Scaffold(
        backgroundColor: whiteColor,
        floatingActionButton: scanButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: customBottomNav(),
        body: body());
  }
}
