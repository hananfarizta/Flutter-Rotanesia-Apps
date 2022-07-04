import 'package:flutter/material.dart';
import 'package:rotania_apps/models/news.dart';
import 'package:rotania_apps/shared/theme.dart';

class NewsCard extends StatelessWidget {
  final News news;
  NewsCard(this.news);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  news.title,
                  style: primaryTextStyle.copyWith(
                      fontSize: 15, fontWeight: medium),
                ),
                const SizedBox(
                  height: 9,
                ),
                Text(
                  news.subtitle,
                  style: secondaryTextStyle.copyWith(
                      fontSize: 12, fontWeight: reguler),
                ),
                const SizedBox(
                  height: 9,
                ),
                Text(
                  '13 Feb 2022',
                  style: secondaryTextStyle.copyWith(
                      fontSize: 12, fontWeight: reguler),
                )
              ],
            ),
          ),
          Image.asset(news.imgUrl)
        ],
      ),
    );
  }
}
