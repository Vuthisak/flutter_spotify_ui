import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/src/constants/image_paths.dart';
import 'package:flutter_spotify_ui/src/widgets/button_with_outline.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SizedBox(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Color(0xFF121212),
            ),
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage('assets/images/img_spotify.png'),
                        width: 53.0,
                        height: 53.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Center(
                          child: Text(
                            "Millions of Songs.\nFree on Spotify.",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
