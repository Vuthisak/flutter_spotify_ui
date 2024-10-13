import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/src/screens/startup/button_group_widget.dart';
import 'package:flutter_spotify_ui/src/screens/startup/center_widget.dart';
import 'package:flutter_spotify_ui/src/screens/startup/header_widget.dart';

class StartupScreen extends StatelessWidget {
  const StartupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Color(0xFF121212),
          ),
          child: Column(
            children: [
              HeaderWidget(),
              CenterWidget(),
              ButtonGroupWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
