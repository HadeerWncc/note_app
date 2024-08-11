import 'package:flutter/material.dart';
import 'package:note_app/views/widget/custom_searsh_icon.dart';

class CustomerAppBar extends StatelessWidget {
  const CustomerAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Notes",
            style: TextStyle(
              fontSize: 23,
            ),
          ),
          CustomSearshIcon(),
        ]);
  }
}
