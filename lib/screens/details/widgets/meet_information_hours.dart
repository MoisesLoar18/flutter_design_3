import 'package:flutter/material.dart';

class MeetInformationHours extends StatelessWidget {
  const MeetInformationHours({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      width: MediaQuery.of(context).size.width * .3,
      height: 215,
      decoration: BoxDecoration(color: Colors.greenAccent, borderRadius: BorderRadius.circular(20)),
      child: RichText(
        text: const TextSpan(style: TextStyle(color: Colors.black), text: "Meeting \n start \n in \n", children: [
          TextSpan(text: "3\n", style: TextStyle(fontSize: 60, fontFamily: "BebasNeue")),
          TextSpan(text: "hours\n", style: TextStyle(fontSize: 20, fontFamily: "BebasNeue")),
          TextSpan(text: "21 minutes\n", style: TextStyle(fontSize: 20, fontFamily: "BebasNeue")),
          TextSpan(text: "Jakarta, ID", style: TextStyle(fontSize: 14, fontFamily: "BebasNeue-Regular")),
        ]),
        textAlign: TextAlign.center,
      ),
    );
  }
}
