import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ClickableAssetIcon extends StatelessWidget {
  ClickableAssetIcon({
    required this.assetPath,
    this.padding = const EdgeInsets.all(0),
    this.width = 20,
    this.height = 20,
    this.color = Colors.black,
    required this.onPress,
    super.key,
  });

  EdgeInsetsGeometry padding;
  String assetPath;
  Color color;
  double width;
  double height;
  GestureTapCallback onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Padding(
        padding: padding,
        child: SvgPicture.asset(
          assetPath,
          width: width,
          height: height,
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        ),
      ),
    );
  }
}
