import 'package:flutter/material.dart';
import 'package:flutter_basic_training/facebook/core/ColorManager.dart';
import 'package:flutter_basic_training/facebook/customWidgets/ClickableAssetIcon.dart';
import 'package:flutter_basic_training/facebook/model/StoryModel.dart';
import 'package:flutter_basic_training/generated/assets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'customWidgets/postCard.dart';
import 'customWidgets/storyItem.dart';

class MainFaceBookScreen extends StatefulWidget {
  const MainFaceBookScreen({super.key});

  static String mainFacebookScreenRoute = "/facebook";

  @override
  State<MainFaceBookScreen> createState() => _MainFaceBookScreenState();
}

class _MainFaceBookScreenState extends State<MainFaceBookScreen> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: selectedTab,
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Facebook",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: ColorManager.blue,
            ),
          ),
          actions: [
            ClickableAssetIcon(
              assetPath: Assets.iconsIcPlus,
              onPress: () {},
              padding: EdgeInsetsGeometry.only(left: 12),
            ),
            ClickableAssetIcon(
              assetPath: Assets.iconsIcSearch,
              onPress: () {},
              padding: EdgeInsetsGeometry.only(left: 12),
            ),
            ClickableAssetIcon(
              assetPath: Assets.iconsIcMessanger,
              onPress: () {},
              padding: EdgeInsetsGeometry.only(left: 12),
            ),
          ],
          actionsPadding: EdgeInsets.only(right: 20),
          bottom: TabBar(
            onTap: (index) {
              selectedTab = index;
              setState(() {});
            },
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Color(0xFF1877F2),
            labelColor: Color(0xFF1877F2),
            unselectedLabelColor: Color(0xFF898F9C),
            tabs: [
              Tab(
                icon: SvgPicture.asset(
                  Assets.iconsIcHome,
                  colorFilter: ColorFilter.mode(
                    selectedTab == 0 ? Color(0xFF1877F2) : Color(0xFF898F9C),
                    BlendMode.srcIn,
                  ),
                ),
              ),
              Tab(
                icon: SvgPicture.asset(
                  Assets.iconsIcReel,
                  colorFilter: ColorFilter.mode(
                    selectedTab == 1 ? Color(0xFF1877F2) : Color(0xFF898F9C),
                    BlendMode.srcIn,
                  ),
                ),
              ),
              Tab(
                icon: SvgPicture.asset(
                  Assets.iconsIcStore,
                  colorFilter: ColorFilter.mode(
                    selectedTab == 2 ? Color(0xFF1877F2) : Color(0xFF898F9C),
                    BlendMode.srcIn,
                  ),
                ),
              ),
              Tab(
                icon: SvgPicture.asset(
                  Assets.iconsIcProfile,
                  colorFilter: ColorFilter.mode(
                    selectedTab == 3 ? Color(0xFF1877F2) : Color(0xFF898F9C),
                    BlendMode.srcIn,
                  ),
                ),
              ),
              Tab(
                icon: SvgPicture.asset(
                  Assets.iconsIcNotification,
                  colorFilter: ColorFilter.mode(
                    selectedTab == 4 ? Color(0xFF1877F2) : Color(0xFF898F9C),
                    BlendMode.srcIn,
                  ),
                ),
              ),
              Tab(
                icon: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    Assets.imagesProfileImage,
                    width: 31,
                    height: 31,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: TabBarView(
            children: [
              HomeTabContent(),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
              Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeTabContent extends StatelessWidget {
  const HomeTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: ShareContentSection(
              onTextChanged: (text) {
                print("==> changed text: $text");
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            height: 210,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 2.0, color: Color(0xFF898F9C)),
                top: BorderSide(width: 1.0, color: Color(0xFF898F9C)),
              ),
            ),
            child: StoriesSection(stories: StoryModel.example),
          ),
          PostCard(),
        ],
      ),
    );
  }
}

class ShareContentSection extends StatelessWidget {
  ShareContentSection({required this.onTextChanged, super.key});

  void Function(String) onTextChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            Assets.imagesProfileImage,
            width: 43,
            height: 43,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: TextField(
            onChanged: onTextChanged,
            decoration: InputDecoration(
              border: InputBorder.none,
              hint: Text(
                "What’s in Your Mind?",
                style: TextStyle(color: Color(0xFF898F9C), fontSize: 16),
              ),
            ),
          ),
        ),
        ClickableAssetIcon(
          assetPath: Assets.iconsIcAddImage,
          onPress: () {},
          color: Color(0xFF0DE571),
        ),
      ],
    );
  }
}

class StoriesSection extends StatelessWidget {
  StoriesSection({super.key, required this.stories});

  List<StoryModel> stories;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: stories.length,
      itemBuilder: (_, index) {
        if (index == 0) {
          return CreateStoryItem(
            profileImgUrl: StoryModel.example[0].profileImgUrl,
          );
        }
        var currentStory = stories[index];
        return Padding(
          padding: const EdgeInsets.only(left: 5),
          child: StoryItem(
            profileImage: currentStory.profileImgUrl,
            storyImage: currentStory.storiesImgUrl[0],
          ),
        );
      },
    );
  }
}
