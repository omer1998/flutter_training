
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../generated/assets.dart';
import '../model/StoryModel.dart';
import 'ClickableAssetIcon.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 1.0, color: Colors.black)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                      StoryModel.example[0].profileImgUrl,
                      width: 53,
                      height: 53,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "account name",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF242527),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "8h .",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF898F9C),
                              ),
                            ),
                            SvgPicture.asset(
                              colorFilter: ColorFilter.mode(
                                Color(0xFF898F9C),
                                BlendMode.srcIn,
                              ),
                              Assets.iconsIcEarth,
                              width: 11,
                              height: 11,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Expanded(child: Container()),
                  SvgPicture.asset(
                    colorFilter: ColorFilter.mode(
                      Colors.black,
                      BlendMode.srcIn,
                    ),
                    Assets.iconsIcMoreHorizontal,
                    width: 22,
                    height: 9,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                StoryModel.example[0].profileImgUrl,
                height: 270,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClickableAssetIcon(
                        assetPath: Assets.iconsIcLove,
                        onPress: () {},
                        width: 24,
                        height: 24,
                        padding: EdgeInsets.only(right: 8),
                      ),
                      ClickableAssetIcon(
                        assetPath: Assets.iconsIcComments,
                        onPress: () {},
                        width: 24,
                        height: 24,
                        padding: EdgeInsets.only(right: 8),
                      ),
                      ClickableAssetIcon(
                        assetPath: Assets.iconsIcSend,
                        onPress: () {},
                        width: 24,
                        height: 24,
                        padding: EdgeInsets.only(right: 8),
                      ),
                    ],
                  ),
                  ClickableAssetIcon(
                    assetPath: Assets.iconsIcBookmark,
                    onPress: () {},
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
