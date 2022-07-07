import 'package:flutter/material.dart';
import 'package:rotanesia_apps/shared/theme.dart';
import 'package:rotanesia_apps/widgets/offline_event_card.dart';
import 'package:rotanesia_apps/widgets/online_event_card.dart';

class DiscussionForum extends StatelessWidget {
  const DiscussionForum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget recentItem() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: defaultMargin,
              right: defaultMargin,
              top: 30,
            ),
            child: Text(
              'Recent Events',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: defaultMargin,
                ),
                Image.asset(
                  'assets/bitmap/image_discussion_card.png',
                  height: 150,
                ),
                const SizedBox(
                  width: 15,
                ),
                Image.asset(
                  'assets/bitmap/image_discussion_card.png',
                  height: 150,
                ),
                const SizedBox(
                  width: 15,
                ),
                Image.asset(
                  'assets/bitmap/image_discussion_card.png',
                  height: 150,
                ),
                const SizedBox(
                  width: 15,
                ),
              ],
            ),
          )
        ],
      );
    }

    Widget onlineEvent() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Online Event',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
                Text(
                  'See All',
                  style:
                      redTextStyle1.copyWith(fontSize: 11, fontWeight: reguler),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const OnlineEventCard(),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 1,
              color: Color(0xffEDEDED),
            ),
            const SizedBox(
              height: 10,
            ),
            const OnlineEventCard(),
          ],
        ),
      );
    }

    Widget offlineEvent() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Offline Event',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
                Text(
                  'See All',
                  style:
                      redTextStyle1.copyWith(fontSize: 11, fontWeight: reguler),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const OfflineEventCard(),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 1,
              color: Color(0xffEDEDED),
            ),
            const SizedBox(
              height: 10,
            ),
            const OfflineEventCard(),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        recentItem(),
        onlineEvent(),
        offlineEvent(),
      ],
    );
  }
}
