import 'package:flutter/material.dart';

class ButtonMenu extends StatelessWidget {
  final IconData icon;
  final VoidCallback function;

  const ButtonMenu({
    super.key,
    required this.icon,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(50)),
      onTap: function,
      child: Container(
        padding: const EdgeInsets.all(7),
        margin: const EdgeInsets.all(7),
        decoration: getDecoration(),
        child: Icon(icon),
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
