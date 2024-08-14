import 'package:flutter/material.dart';

class GridSingle extends StatelessWidget {
  final String imagePath;
  final String name;

  const GridSingle({
    super.key,
    required this.imagePath,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.red,
            image: DecorationImage(
              image: AssetImage(imagePath),
            ),
          ),
        ),
        Text(name),
      ],
    );
  }
}
