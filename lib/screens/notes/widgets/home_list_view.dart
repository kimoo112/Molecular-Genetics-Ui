import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../Logic/Read Notes Cubit/notes_cubit.dart';
import '../../../constants/color.dart';
import '../../../models/note_model.dart';
import 'custom_container.dart';

class NotesListView extends StatefulWidget {
  const NotesListView({
    super.key,
  });

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
  bool isEmpty = true;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
        isEmpty = notes.isEmpty;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 28),
          child: isEmpty
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Lottie.asset('assets/icons/Empty Notes.json', width: 250.w),
                    Center(
                      child: Text(
                        "لا يوجد ملاحظات يمكنك الان اضافه ملاحظاتك",
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: cLight,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              : ListView.builder(
                  itemCount: notes.length,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CustomContainer(
                        note: notes[index],
                      ),
                    );
                  }),
        );
      },
    );
  }
}
