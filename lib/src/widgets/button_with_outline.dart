import 'package:flutter/material.dart';

class ButtonWithOutline extends StatelessWidget {
  const ButtonWithOutline(
      {super.key,
      required this.color,
      required this.iconPath,
      required this.label,
      required this.onPressed});

  final Color color;
  final String iconPath;
  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 45.0,
        right: 45.0,
      ),
      child: SizedBox(
        width: double.infinity,
        child: ButtonTheme(
          minWidth: double.infinity,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                width: 0.6,
                color: Colors.white,
                style: BorderStyle.solid,
              ),
            ),
            onPressed: onPressed,
            child: SizedBox(
              width: double.infinity,
              child: Stack(
                alignment: AlignmentDirectional.centerStart,
                children: [
                  Image(
                    alignment: AlignmentDirectional.center,
                    width: 18.0,
                    height: 18.0,
                    image: AssetImage(iconPath),
                  ),
                  Container(
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      label,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
