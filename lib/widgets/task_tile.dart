import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final isChecked;
  final taskTitle;
  final checkBoxCallBack;

  TaskTile({this.isChecked,this.taskTitle,this.checkBoxCallBack});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough: null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        onChanged: checkBoxCallBack,
        value: isChecked,
      )
    );
  }
}

