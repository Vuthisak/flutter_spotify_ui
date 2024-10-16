import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/src/screens/create_account/create_account_screen_content_widget.dart';

class CreateAccountScreenWidget extends StatelessWidget {
  const CreateAccountScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Color(0xFF121212),
          ),
          child: CreateAccountScreenContentWidget(),
        ),
      ),
    );
  }
}
