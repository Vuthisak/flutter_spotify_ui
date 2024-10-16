import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/src/constants/image_paths.dart';

class CreateAccountScreenContentWidget extends StatelessWidget {
  const CreateAccountScreenContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).padding.top,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            top: 8.0,
            bottom: 8.0,
            right: 0.0,
          ),
          child: Stack(
            alignment: AlignmentDirectional.centerStart,
            children: [
              const Image(
                alignment: AlignmentDirectional.center,
                width: 32.0,
                height: 32.0,
                image: AssetImage(
                  ImagePaths.icChevronLeft,
                ),
              ),
              Container(
                alignment: AlignmentDirectional.center,
                child: const Text(
                  "Create account",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 22.0, top: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "What’s your email?",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFF777777),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                ),
                style: const TextStyle(color: Colors.white, fontSize: 16.0),
              ),
              const SizedBox(
                height: 4.0,
              ),
              const Text(
                "You’ll need to confirm this email later.",
                style: TextStyle(
                  fontSize: 8.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
