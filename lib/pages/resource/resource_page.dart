import 'package:flutter/material.dart';
import 'package:jpcc_clone/pages/resource/components/new_release_resources_slider.dart';
import 'package:jpcc_clone/pages/resource/components/podcast_slider.dart';
import 'package:jpcc_clone/pages/resource/components/sermon_slider.dart';
import 'package:jpcc_clone/pages/resource/components/speaker_slider.dart';
import 'package:jpcc_clone/pages/resource/components/tapbar_slider.dart';
import 'package:solar_icons/solar_icons.dart';

class ResourcePage extends StatelessWidget {
  const ResourcePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resources"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              SolarIconsOutline.magnifier,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              SolarIconsOutline.heart,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(),

            // Tap Bar
            TapBarSlider(),
            // SizedBox(height: 10),

            // New Releases
            NewReleaseResourcesSlider(),
            SizedBox(height: 10),

            // Sermon
            SermonSlider(),
            SizedBox(height: 10),

            // Podcast
            PodcastSlider(),
            SizedBox(height: 10),

            // Speakers
            SpeakerSlider(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
