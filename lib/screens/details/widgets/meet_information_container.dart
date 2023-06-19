import 'dart:math';

import 'package:flutter/material.dart';

class MeetInformation extends StatelessWidget {
  final String titleTop;
  final String titleCenter;
  final String titleBottom;
  final bool photo;

  const MeetInformation({
    super.key,
    required this.titleTop,
    required this.titleCenter,
    required this.titleBottom,
    this.photo = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.primaries[Random().nextInt(17)].shade900, borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width * .6,
      child: Column(
        children: [
          const Text("Meeting Platform", style: TextStyle(color: Colors.white, fontFamily: "FamiljenGrotesk")),
          const SizedBox(height: 2),
          photo == true
              ? const Image(
                  image: NetworkImage("https://www.edigitalagency.com.au/wp-content/uploads/zoom-logo-png-video-meeting-call-software.png"),
                  height: 20,
                  color: Colors.white,
                )
              : Text(titleCenter, style: const TextStyle(fontSize: 25, color: Colors.white)),
          const SizedBox(height: 2),
          const Text("Pasar Raya Office", style: TextStyle(color: Colors.white, fontFamily: "FamiljenGrotesk")),
        ],
      ),
    );
  }
}
