import 'package:flutter/material.dart';

import 'package:flutter_design_3/screens/details/widgets/widgets.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: CustomAppBar(),
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.grey[700],
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        height: 60,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ResponseButton(title: "Attend", isPrincipal: true),
            SizedBox(width: 20),
            ResponseButton(title: "No"),
            SizedBox(width: 20),
            ResponseButton(title: "Maybe"),
          ],
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.only(left: 15),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        child: const SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              // Texts
              SizedBox(height: 15),
              Text("Banner Synchronise", style: TextStyle(color: Colors.white, fontSize: 30, fontFamily: "FamiljenGrotesk")),
              Text("Tuesday, 20 Dec - 2:30 PM - 3:30 PM", style: TextStyle(color: Colors.grey, fontSize: 16, fontFamily: "FamiljenGrotesk")),
              Text("Repeats every week on Tuesday", style: TextStyle(color: Colors.grey, fontSize: 16, fontFamily: "FamiljenGrotesk")),
              SizedBox(height: 15),

              // Details containers
              Row(
                children: [
                  MeetInformationHours(),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      MeetInformation(
                        titleTop: "Meeting Platform",
                        titleCenter: "https://www.edigitalagency.com.au/wp-content/uploads/zoom-logo-png-video-meeting-call-software.png",
                        titleBottom: "ID: 293 224 532",
                      ),
                      SizedBox(height: 10),
                      MeetInformation(
                        photo: false,
                        titleTop: "Meeting Room",
                        titleCenter: "Garuda Room 12",
                        titleBottom: "ID: 293 224 532",
                      ),
                    ],
                  )
                ],
              ),

              // ParticipantsList
              SizedBox(height: 20),
              Text("20 guests", style: TextStyle(color: Colors.white, fontSize: 25, fontFamily: "FamiljenGrotesk")),
              SizedBox(height: 5),
              Text("12 yes (1 in a meeting room, 6 virtually)", style: TextStyle(color: Colors.white54, fontSize: 16, fontFamily: "FamiljenGrotesk")),
              SizedBox(height: 5),
              Text("3 no, 7 awaiting", style: TextStyle(color: Colors.white54, fontSize: 16, fontFamily: "FamiljenGrotesk")),
              ParticipantsList()
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration getDecoration() {
    return BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.grey[800],
    );
  }
}

class ResponseButton extends StatelessWidget {
  final bool isPrincipal;
  final String title;

  const ResponseButton({
    super.key,
    this.isPrincipal = false,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // print(title);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          color: isPrincipal == true ? Colors.greenAccent : Colors.transparent,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          border: isPrincipal == true ? null : Border.all(color: Colors.grey),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontFamily: "FamiljenGrotesk",
            fontWeight: FontWeight.bold,
            color: isPrincipal == true ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }
}
