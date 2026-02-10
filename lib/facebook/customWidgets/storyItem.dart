
import 'dart:ui';

import 'package:flutter/material.dart';

import '../core/ColorManager.dart';

class CreateStoryItem extends StatelessWidget {
  CreateStoryItem({super.key, required this.profileImgUrl});

  String profileImgUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.only(
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15),
              ),
              child: Image.network(
                profileImgUrl,
                width: 112,
                height: 124,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: -10,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorManager.blue,
                  border: BoxBorder.all(color: Colors.white, width: 2),
                ),
                child: Center(
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    color: Colors.white,
                    icon: Icon(Icons.add),
                    iconSize: 10,
                  ),
                ),
              ),
            ),
          ],
        ),

        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text(
            "Create a\n Story",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}

class StoryItem extends StatelessWidget {
  StoryItem({required this.profileImage, required this.storyImage, super.key});

  String storyImage;
  String profileImage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(15),
          child: Image.network(
            storyImage,
            width: 112,
            height: 180,
            fit: BoxFit.cover,
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                profileImage,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
