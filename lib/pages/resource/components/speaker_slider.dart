import 'package:flutter/material.dart';

class SpeakerSlider extends StatelessWidget {
  const SpeakerSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Speaker",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "See All",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF8AC33E),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          // color: Colors.amber,
          width: MediaQuery.of(context).size.width,
          height: 180,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              for (int index = 0; index < 5; index++)
                Column(
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.amberAccent,
                        image: DecorationImage(
                          image: AssetImage("assets/images/logo.png"),
                        ),
                      ),
                    ),
                    Container(
                      width: 120,
                      child: Center(
                        child: Text(
                          "[JUDUL " + index.toString() + "]",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ],
    );
  }
}
