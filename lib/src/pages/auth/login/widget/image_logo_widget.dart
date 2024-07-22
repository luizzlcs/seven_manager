import 'package:flutter/material.dart';

import '../../../../core/theme/seven_manager_theme.dart';

class ImageLogoWidget extends StatelessWidget {
  const ImageLogoWidget({super.key, required this.pathImage});

  final String pathImage;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 75,
      backgroundColor: SevenManagerTheme.greenYellow,
      child: CircleAvatar(
        radius: 72,
        backgroundColor: SevenManagerTheme.greyColor,
        backgroundImage: pathImage.contains('http:')
            ? NetworkImage(pathImage)
            : AssetImage(pathImage),
      ),
    );
  }
}
