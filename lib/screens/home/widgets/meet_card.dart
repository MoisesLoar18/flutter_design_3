import 'dart:math';

import 'package:flutter/material.dart';

class MeetCard extends StatelessWidget {
  final String title;
  final String hours;

  const MeetCard({
    super.key,
    required this.title,
    required this.hours,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, '/details'),
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          color: Colors.primaries[Random().nextInt(17)].shade900,
          borderRadius: BorderRadius.circular(20),
        ),
        height: 150,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // TITLE MEETING
                SizedBox(
                  width: MediaQuery.of(context).size.width * .4,
                  child: Text(
                    title,
                    style: const TextStyle(color: Colors.white, fontSize: 30, fontFamily: "FamiljenGrotesk"),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),

                // PARTICIPANTS
                const ParticipantsList()
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hours,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                const Image(
                  image: NetworkImage("https://www.edigitalagency.com.au/wp-content/uploads/zoom-logo-png-video-meeting-call-software.png"),
                  height: 15,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ParticipantsList extends StatelessWidget {
  const ParticipantsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .28,
      height: 45,
      child: Stack(
        children: List.generate(4, (index) {
          return Positioned(
            left: index * 25,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: CircleAvatar(
                radius: 15,
                backgroundImage: (index == 3) ? null : NetworkImage("https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/${Random().nextInt(100)}.jpg"),
                backgroundColor: (index == 3) ? Colors.white : Colors.transparent,
                child: (index == 3) ? const Text("+20", style: TextStyle(fontFamily: "FamiljenGrotesk", color: Colors.black)) : const Text(""),
              ),
            ),
          );
        }),
      ),
    );
  }
}
