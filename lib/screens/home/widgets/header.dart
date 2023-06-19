import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("TUESDAY, 20 DEC", style: TextStyle(color: Colors.white, fontSize: 20)),
          const Text("8 MEETINGS", style: TextStyle(color: Colors.greenAccent, fontSize: 40)),
          RichText(
            textAlign: TextAlign.left,
            text: const TextSpan(
              text: "Your first meeting starts at ",
              style: TextStyle(color: Colors.grey, fontSize: 16),
              children: [
                TextSpan(text: "11:30 AM ", style: TextStyle(color: Colors.greenAccent, fontSize: 18)),
                TextSpan(text: "and last meetings at "),
                TextSpan(text: "4:00 PM", style: TextStyle(color: Colors.greenAccent, fontSize: 18)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
