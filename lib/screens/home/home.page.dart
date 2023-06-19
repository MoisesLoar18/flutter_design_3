import 'package:flutter/material.dart';

import 'package:flutter_design_3/screens/home/widgets/custom_app_bar.dart';
import 'package:flutter_design_3/screens/home/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: customAppBar(),
      floatingActionButton: const AddButton(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const Header(),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              width: double.infinity,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Today's meetings", style: TextStyle(fontFamily: "FamiljenGrotesk", fontSize: 24, color: Colors.white)),
                  MeetCard(title: "Dateo Cadance", hours: "11:30 AM - 12:30 PM"),
                  MeetCard(title: "Banner Synchronise", hours: "2:30 PM - 3:30 PM"),
                  MeetCard(title: "Devboc of Discovery", hours: "3:30 PM - 4:30 PM"),
                  MeetCard(title: "Usability Testing #14", hours: "4:30 PM - 6:30 PM"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AddButton extends StatelessWidget {
  const AddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.grey[800],
      onPressed: () {},
      child: const Icon(Icons.add, color: Colors.greenAccent, size: 30),
    );
  }
}
