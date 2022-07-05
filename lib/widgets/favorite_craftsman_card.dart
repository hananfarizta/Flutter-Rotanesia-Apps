import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rotanesia_apps/models/favorite_craftsman.dart';
import 'package:rotanesia_apps/shared/theme.dart';

class FavoriteCraftsmanCard extends StatelessWidget {
  final FavoriteCraftsman favoritecraftsman;
  FavoriteCraftsmanCard(this.favoritecraftsman);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.infinity,
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 12,
      ),
      child: Row(
        children: [
          Image.asset(
            favoritecraftsman.imgUrl,
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  favoritecraftsman.name,
                  style: primaryTextStyle.copyWith(
                      fontSize: 14, fontWeight: medium),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/vector/ic_location.svg'),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      favoritecraftsman.city,
                      style: secondaryTextStyle.copyWith(
                          fontSize: 10, fontWeight: reguler),
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/vector/ic_star.svg'),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '4.2 | Sold 909',
                      style: secondaryTextStyle.copyWith(
                          fontSize: 10, fontWeight: reguler),
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Icon(
              Icons.more_horiz_outlined,
              color: grayColor6,
            ),
          )
        ],
      ),
    );
  }
}
