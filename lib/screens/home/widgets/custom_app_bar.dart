import 'package:flutter/material.dart';

import 'package:flutter_design_3/widgets/button_menu.dart';

AppBar customAppBar() {
  return AppBar(
    backgroundColor: Colors.black,
    elevation: 0,
    centerTitle: false,
    leading: ButtonMenu(icon: Icons.menu, function: () {}),
    actions: const [
      Avatar(),
      SizedBox(width: 10),
    ],
    title: const MonthSelectDropdown(),
  );
}

class MonthSelectDropdown extends StatelessWidget {
  const MonthSelectDropdown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      padding: EdgeInsets.zero,
      elevation: 0,
      dropdownColor: Colors.black,
      value: "DECEMBER",
      underline: Container(),
      items: const [
        DropdownMenuItem(value: "DECEMBER", child: Text("DECEMBER", style: TextStyle(color: Colors.white, fontSize: 22))),
        DropdownMenuItem(value: "ABRIL", child: Text("ABRIL", style: TextStyle(color: Colors.white, fontSize: 22))),
        DropdownMenuItem(value: "MAY", child: Text("MAY", style: TextStyle(color: Colors.white, fontSize: 22))),
        DropdownMenuItem(value: "FEBRARY", child: Text("FEBRARY", style: TextStyle(color: Colors.white, fontSize: 22))),
      ],
      onChanged: (value) {},
    );
  }
}

class Avatar extends StatelessWidget {
  const Avatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundImage: NetworkImage("https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/786.jpg"),
    );
  }
}
