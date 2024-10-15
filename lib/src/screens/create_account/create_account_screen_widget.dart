import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/src/navigator/navigator_part.dart';
import 'package:flutter_spotify_ui/src/navigator/navigator_route.dart';

class CreateAccountScreenWidget extends StatelessWidget {
  const CreateAccountScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) => {
        if (didPop) {
          context.go(Destination.home);
        }
      },
      child: const Scaffold(
        body: SizedBox(
          child: Text("test"),
        ),
      ),
    );
  }
}
