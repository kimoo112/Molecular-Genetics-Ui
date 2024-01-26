import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../Logic/Read Notes Cubit/notes_cubit.dart';
import '../../../constants/color.dart';
import '../../../models/note_model.dart';

class CustomContainer extends StatefulWidget {
  const CustomContainer({
    super.key,
    required this.note,
  });
  final NoteModel note;
  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  var dateform = DateFormat.yMEd().format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return LightCustomContainer(
      dateform: dateform,
      note: widget.note,
    );
  }
}

class LightCustomContainer extends StatelessWidget {
  const LightCustomContainer({
    super.key,
    required this.dateform,
    required this.note,
  });

  final String dateform;
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 250,
      decoration: BoxDecoration(
          color: cPrimary,
          boxShadow: [
            BoxShadow(
              offset: const Offset(1, 1),
              color: Colors.black.withOpacity(.5),
              spreadRadius: 0,
              blurRadius: 5,
            )
          ],
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        note.delete();
                        BlocProvider.of<NotesCubit>(context).fetchData();
                      },
                      icon: const Icon(
                        Icons.delete_forever,
                        color: cDark,
                      ),
                    ),
                    Text(
                      note.title.toUpperCase(),
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          letterSpacing: .4),
                    ),
                    Opacity(
                      opacity: .8,
                      child: Text(
                        note.date,
                        style: const TextStyle(
                            fontWeight: FontWeight.w300,
                            fontFamily: "Poppins",
                            letterSpacing: .4),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  note.body,
                  style:
                      const TextStyle( letterSpacing: .2),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
