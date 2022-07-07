import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rotanesia_apps/shared/theme.dart';
import 'package:rotanesia_apps/widgets/discussion_forum.dart';
import 'package:rotanesia_apps/widgets/thread_forum.dart';

class ForumPage extends StatelessWidget {
  const ForumPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: whiteColor,
            automaticallyImplyLeading: false,
            elevation: 3,
            title: Text(
              'Forum',
              style:
                  primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            bottom: TabBar(
              indicatorColor: redColor1,
              unselectedLabelColor: grayColor2,
              labelColor: redColor1,
              tabs: [
                Tab(
                  child: Text(
                    'Thread',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Discussion Forum',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: const TabBarView(children: [
            Center(child: ThreadForum()),
            Center(
              child: DiscussionForum(),
            ),
          ]),
        ));
  }
}
