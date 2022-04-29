import 'package:flutter/material.dart';
import 'package:messenger_app/utils/utils.dart';

class CustomButton extends StatelessWidget {
  final Function() onPressed;
  final IconData icon;
  final double iconSize;

  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Dimenstions.height10 / 2),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(Dimenstions.radius30),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
        iconSize: iconSize,
        color: Colors.black,
      ),
    );
  }
}
