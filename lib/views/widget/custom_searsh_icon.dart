import 'package:flutter/material.dart';

class CustomSearshIcon extends StatelessWidget {
  const CustomSearshIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43,
      width: 43,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.05),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Center(
        child: Icon(Icons.search),
      ),
    );
  }
}
