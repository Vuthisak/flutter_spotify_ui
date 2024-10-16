import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/src/constants/image_paths.dart';
import 'package:flutter_spotify_ui/src/navigator/navigator_part.dart';
import 'package:flutter_spotify_ui/src/widgets/button_with_outline.dart';
import 'package:go_router/go_router.dart';

class ButtonGroupWidget extends StatelessWidget {
  const ButtonGroupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(
                  left: 45.0,
                  right: 45.0,
                  top: 22.0,
                ),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      context.push(Destination.createAccount);
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                        const Color(0xFF1ED760),
                      ),
                    ),
                    child: const Text(
                      "Sign up for free",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )),
            const ButtonWithOutline(
              color: Colors.green,
              iconPath: ImagePaths.icLoginWithGoogle,
              label: "Continue with Gooogle",
              onPressed: null,
            ),
            const ButtonWithOutline(
              color: Colors.green,
              iconPath: ImagePaths.icLoginWithFacebook,
              label: "Continue with Facebook",
              onPressed: null,
            ),
            const ButtonWithOutline(
              color: Colors.green,
              iconPath: ImagePaths.icLoginWithApple,
              label: "Continue with Apple",
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
