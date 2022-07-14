import 'package:flutter/material.dart';

class ChoiceButton extends StatelessWidget {
  final double width;
  final double height;
  final double size;
  final Color color;
  final IconData icon;


  const ChoiceButton({
    Key? key,
    this.width = 60,
    this.height = 60,
    this.size = 25,
    required this.color,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha(50),
            spreadRadius: 4,
            blurRadius: 4,
            offset: Offset(3, 3),
          ),
        ],
      ),
      child: Icon(
        icon,
        color: color,
      ),
    );
  }
}
