import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 20, left: 12),
      decoration: BoxDecoration(
        color: Color(0xffffce7f),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter tips',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Build your carrer with tharwat samy',
                style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                  fontSize: 18,
                ),
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 26,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(
              'May 21,2022',
              style:
                  TextStyle(color: Colors.black.withOpacity(.5), fontSize: 13),
            ),
          )
        ],
      ),
    );
  }
}
