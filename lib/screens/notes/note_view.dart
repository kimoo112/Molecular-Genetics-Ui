import 'package:education_app/constants/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Logic/Read Notes Cubit/notes_cubit.dart';
import '../../models/note_model.dart';
import 'widgets/bottom_sheet_widget.dart';
import 'widgets/home_list_view.dart';

class NotesView extends StatefulWidget {
  const NotesView({Key? key}) : super(key: key);
  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  final formKey = GlobalKey<FormState>();
  List<NoteModel>? notes;

  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 3,
        shadowColor: cDark.withOpacity(.8),
        title: const Text(
          "ملاحظاتك",
          style: TextStyle(
              fontWeight: FontWeight.w700, letterSpacing: 1, color: cLight),
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 22.0.h, left: 9),
        child: FloatingActionButton(
          backgroundColor: cPrimary,
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (BuildContext cxt) {
                  return BottomSheetWidget(formKey: formKey);
                });
          },
          child: Icon(
            CupertinoIcons.pencil_outline,
            size: 22.sp,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 40.h),
        child: const NotesListView(),
      ),
    );
  }
}
