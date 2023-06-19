import 'package:flutter/material.dart';

import 'package:flutter_design_3/widgets/widgets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.black,
      leading: ButtonMenu(
        icon: Icons.close,
        function: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        ButtonMenu(icon: Icons.edit, function: () {}),
        ButtonMenu(icon: Icons.more_horiz, function: () {}),
      ],
    );
  }
}
