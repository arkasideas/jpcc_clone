import 'package:flutter/material.dart';
import 'package:jpcc_clone/pages/home/component/classes_slider.dart';
import 'package:jpcc_clone/pages/home/component/event_slider.dart';
import 'package:jpcc_clone/pages/home/component/grid_menu.dart';
import 'package:jpcc_clone/pages/home/component/image_slider.dart';
import 'package:jpcc_clone/pages/home/component/newrelease_slider.dart';
import 'package:jpcc_clone/pages/home/component/search_button.dart';
import 'package:jpcc_clone/pages/home/search_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hi [NAMA]",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        backgroundColor: Color(0xFF8AC33E),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.airplane_ticket,
              color: Colors.white,
            ),
          ),
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image Slider
                ImageSlider(),
                // Container(
                //   color: Colors.black,
                //   width: MediaQuery.of(context).size.width,
                //   height: 240,
                //   child: Center(
                //     child: Text(
                //       "IMAGE SLIDER",
                //       style: TextStyle(
                //         color: Colors.white,
                //         fontSize: 20,
                //         fontWeight: FontWeight.bold,
                //       ),
                //     ),
                //   ),
                // ),

                // Button Search
                SizedBox(height: 50),

                // Grid Menu
                GridMenu(),
                SizedBox(height: 20),

                // Event Slider
                EventSlider(),

                // New Release Slider
                NewReleaseSlider(),

                // Classes Slider
                ClassesSlider(),
                SizedBox(height: 10),
              ],
            ),
            Positioned(
              top: 220,
              left: 50,
              child: GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchPage(),
                  ),
                ),
                child: SearchButton(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
