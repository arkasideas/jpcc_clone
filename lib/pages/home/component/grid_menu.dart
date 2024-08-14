import 'package:flutter/material.dart';
import 'package:jpcc_clone/pages/home/component/grid_single.dart';

class GridMenu extends StatelessWidget {
  const GridMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GridSingle(imagePath: 'assets/images/logo.png', name: "Text 1"),
            GridSingle(imagePath: 'assets/images/logo.png', name: "Text 2"),
            GridSingle(imagePath: 'assets/images/logo.png', name: "Text 3"),
            GridSingle(imagePath: 'assets/images/logo.png', name: "Text 4"),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GridSingle(imagePath: 'assets/images/logo.png', name: "Text 5"),
            GridSingle(imagePath: 'assets/images/logo.png', name: "Text 6"),
            GridSingle(imagePath: 'assets/images/logo.png', name: "Text 7"),
            GridSingle(imagePath: 'assets/images/logo.png', name: "Text 8"),
          ],
        ),
      ],
    );
  }
}
