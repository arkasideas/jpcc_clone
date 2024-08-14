import 'package:flutter/material.dart';
import 'branch_card.dart';

class BranchList extends StatelessWidget {
  const BranchList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(left: 10),
      // color: Colors.amber,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          for (int index = 0; index < 5; index++)
            BranchCard(
              imagePath: 'assets/images/date.jpg',
              name: "[NAMA CABANG KE " + index.toString() + "]",
              onTap: () {},
            ),
          SizedBox(height: 250),
        ],
      ),
    );
  }
}
