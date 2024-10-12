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
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(
          width: 0.6,
          color: Colors.white,
          style: BorderStyle.solid,
        ),
      ),
      onPressed: onPressed,
      child: Stack(
        children: [
          Image(
            alignment: AlignmentDirectional.centerStart,
            width: 18.0,
            height: 18.0,
            image: AssetImage(iconPath),
          ),
          Text(label)
        ],
      ),
    );
  }
}
