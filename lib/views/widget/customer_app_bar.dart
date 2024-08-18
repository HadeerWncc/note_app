import 'package:flutter/material.dart';
import 'package:note_app/views/widget/custom_icon.dart';

class CustomerAppBar extends StatelessWidget {
  const CustomerAppBar(
      {super.key, required this.textTitle, required this.icon, this.onPressed});
  final String textTitle;
  final Icon icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        textTitle,
        style: const TextStyle(
          fontSize: 23,
        ),
      ),
      CustomIcon(
        onPressed: onPressed,
        icon: icon,
      ),
    ]);
  }
}
