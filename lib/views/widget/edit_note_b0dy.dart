import 'package:flutter/material.dart';
import 'package:note_app/views/widget/custom_text_field.dart';
import 'package:note_app/views/widget/customer_app_bar.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          CustomerAppBar(
            textTitle: 'Edit Note',
            icon: Icon(Icons.check),
          ),
          SizedBox(height: 16),
          CustomTextField(
            hint: 'Title',
          ),
          SizedBox(height: 16),
          CustomTextField(
            hint: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
