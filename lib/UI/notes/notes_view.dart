import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'notes_viewmodel.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NotesViewModel>.reactive(
      viewModelBuilder: () => NotesViewModel(),
      builder: (
        BuildContext context,
        NotesViewModel model,
        Widget? child,
      ) {
        return const Scaffold(
          body: Center(
            child: Text('NotesView'),
          ),
        );
      },
    );
  }
}
