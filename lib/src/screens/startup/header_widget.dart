import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/src/constants/image_paths.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: SizedBox(
        width: double.infinity,
        child: Image(
          image: AssetImage(ImagePaths.bgStartupHeader),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
