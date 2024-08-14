import 'package:flutter/material.dart';
import 'package:jpcc_clone/pages/ministry/components/branch_list.dart';

class MinistryPage extends StatelessWidget {
  const MinistryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ministry Campuses"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(),

            // Toast

            // List Branch
            BranchList(),
            
          ],
        ),
      ),
    );
  }
}
