import 'package:flutter/material.dart';
import 'package:jpcc_clone/pages/community/components/community_card.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Community"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Divider(),

          // DATE Card
          CommunityCard(
            imagePath: 'assets/images/date.jpg',
            name: "DATE",
            onTap: (){},
          ),
          // SizedBox(height: 10),

          //  Nextgen Card
          CommunityCard(
            imagePath: 'assets/images/nextgen.jpg',
            name: "Nextgen",
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
