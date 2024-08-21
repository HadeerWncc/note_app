import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/views/widget/custom_icon.dart';
import 'package:note_app/views/widget/custom_text_field.dart';

class CustomerAppBar extends StatefulWidget {
  const CustomerAppBar(
      {super.key,
      required this.textTitle,
      required this.icon,
      this.onPressed,
      this.inputSearch = false});

  final String textTitle;
  final Icon icon;
  final void Function()? onPressed;
  final bool inputSearch;

  @override
  State<CustomerAppBar> createState() => _CustomerAppBarState();
}

class _CustomerAppBarState extends State<CustomerAppBar> {
  String? searchValue;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        widget.textTitle,
        style: const TextStyle(
          fontSize: 23,
        ),
      ),
      widget.inputSearch == true
          ? SizedBox(
              height: 40,
              width: 180,
              child: CustomTextField(
                onChanged: (value) {
                  searchValue = value;
                  setState(() {
                    
                  });
                  BlocProvider.of<NotesCubit>(context).getNotes(searchValue);
                },
                hint: 'Search',
              ),
            )
          : const SizedBox(
              height: 0,
              child: Text(
                'sizeBox',
                style: TextStyle(color: Colors.white),
              ),
            ),
      CustomIcon(
        onPressed: widget.onPressed,
        icon: widget.icon,
      ),
    ]);
  }
}
