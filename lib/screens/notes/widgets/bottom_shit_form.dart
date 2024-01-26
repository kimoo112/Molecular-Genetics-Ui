import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../Logic/Add Note Cubit/add_note_cubit.dart';
import '../../../models/note_model.dart';
import 'custom_button.dart';
import 'text_form_field.dart';

class BottomForm extends StatefulWidget {
  const BottomForm({Key? key, required this.formKey}) : super(key: key);
  final dynamic formKey;
  @override
  State<BottomForm> createState() => _BottomFormState();
}

class _BottomFormState extends State<BottomForm> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, body;
  var dateform = DateFormat.yMEd().format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          TextFieldWi(
            hintText: "العنوان",
            icon: const Icon(CupertinoIcons.t_bubble),
            type: TextInputType.name,
            autovalidateMode: autovalidateMode,
            onsaved: (value) {
              title = value;
            },
          ),
          TextFieldWi(
            hintText: "الباقي",
            maxlines: 5,
            icon: const SizedBox(),
            type: TextInputType.name,
            autovalidateMode: autovalidateMode,
            onsaved: (value) {
              body = value;
            },
          ),
          const SizedBox(height: 20),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(whenTap: () {
                if (widget.formKey.currentState!.validate()) {
                  widget.formKey.currentState!.save();

                  var noteModel = NoteModel(
                    title: title!,
                    body: body!,
                    date: dateform,
                  );
                  BlocProvider.of<AddNoteCubit>(context).addNotes(noteModel);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              });
            },
          )
        ],
      ),
    );
  }
}
