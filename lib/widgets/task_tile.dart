import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/slideable_widget.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function delete;

  TaskTile(
      {this.isChecked, this.taskTitle, this.checkboxCallback, this.delete});

  @override
  Widget build(BuildContext context) {
    return SlideableWidget(
      deleteFunction: delete,
      child: ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxCallback,
        ),
      ),
    );
  }
}
