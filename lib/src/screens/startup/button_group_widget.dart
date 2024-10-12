import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/src/constants/image_paths.dart';
import 'package:flutter_spotify_ui/src/widgets/button_with_outline.dart';

class ButtonGroupWidget extends StatefulWidget {
  const ButtonGroupWidget({super.key});

  @override
  State<ButtonGroupWidget> createState() => _ButtonGroupWidgetState();
}

class _ButtonGroupWidgetState extends State<ButtonGroupWidget> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          FilledButton(
            onPressed: null,
            child: Text("Sign up for free"),
          ),
          ButtonWithOutline(
              color: Colors.green,
              iconPath: ImagePaths.icLoginWithGoogle,
              label: "Continue with Gooogle",
              onPressed: null),
          ButtonWithOutline(
              color: Colors.green,
              iconPath: ImagePaths.icLoginWithFacebook,
              label: "Continue with Facebook",
              onPressed: null),
          ButtonWithOutline(
              color: Colors.green,
              iconPath: ImagePaths.icLoginWithApple,
              label: "Continue with Apple",
              onPressed: null),
        ],
      ),
    );
  }
}
