import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'todo_viewmodel.dart';

class TodoView extends StatelessWidget {
  const TodoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TodoViewModel>.reactive(
      viewModelBuilder: () => TodoViewModel(),
      builder: (
        BuildContext context,
        TodoViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          body: Center(
            child: ElevatedButton(
              onPressed: model.navigateToNotes,
              child: const Text('See notes'),
            ),
          ),
        );
      },
    );
  }
}
