import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {

  final Function addTaskCallBack;

  AddTaskScreen(this.addTaskCallBack);

  @override
  Widget build(BuildContext context) {

    String newTaskTitle = '';

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),

            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),

            SizedBox(
              height: 10.0,
            ),

            TextButton(
              onPressed: () {
                addTaskCallBack(newTaskTitle);
              },
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),

              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
              ),
              ),
          ],
        ),
      ),
    );
  }
}
