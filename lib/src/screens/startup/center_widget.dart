import 'package:flutter/material.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
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
    );
  }
}
