import 'dart:math';

import 'package:flutter/material.dart';

class ParticipantsList extends StatelessWidget {
  const ParticipantsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: false,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: List.generate(10, (index) {
        return ListTile(
          contentPadding: const EdgeInsets.symmetric(vertical: 0),
          title: const Text("Edith Harris", style: TextStyle(color: Colors.white, fontFamily: "FamiljenGrotesk")),
          subtitle: const Text("02823 Roslyn Meadows", style: TextStyle(color: Colors.white, fontFamily: "FamiljenGrotesk")),
          leading: Container(
            padding: const EdgeInsets.all(2),
            decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/${Random().nextInt(100)}.jpg"),
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.phone, color: Colors.white)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.message, color: Colors.white)),
            ],
          ),
        );
      }),
    );
  }
}
