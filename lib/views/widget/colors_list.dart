import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.selected, required this.color});
  final bool selected;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return selected
        ? CircleAvatar(
            radius: 34,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 34,
            backgroundColor: color,
          );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int selectedIndex = 0;
  List<Color> colors = const [
    Color(0xffDD614A),
    Color(0xff62ACB5),
    Color(0xffF4A698),
    Color(0xffC5C392),
    Color(0xff73A580),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2 * 34,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: () {
                  print(index);
                  selectedIndex = index;
                  setState(() {});
                  print(selectedIndex);
                },
                child: ColorItem(
                  color: colors[index],
                  selected: selectedIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
