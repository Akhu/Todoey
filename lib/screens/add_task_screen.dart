
import 'package:flutter/material.dart';
import 'package:todoey/constants/decoration.dart';

class AddTaskScreen extends StatelessWidget {

  final Function callbackAddTask;

  AddTaskScreen(this.callbackAddTask);

  String taskNameToAdd;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0))
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 42, vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  "Add Task",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 24,
                      fontWeight: FontWeight.w600
                  ),
                  textAlign: TextAlign.center,
                ),
                Divider(
                  height: 42,
                ),
                TextField(
                  decoration: kInputDecoration,
                  onChanged: (value) {
                    taskNameToAdd = value;
                  },
                ),
                SizedBox(
                  height: 18,
                ),
                MaterialButton(
                  elevation: 2,
                  color: Colors.lightBlueAccent,
                  height: 48,
                  child: Text(
                    "SAVE NEW TASK",
                    style: TextStyle(
                        color: Colors.white
                    ),

                  ),
                  onPressed: () {
                    callbackAddTask(taskNameToAdd);
                  },
                )
              ],

            ),
          )
      ),
    );
  }
}
