
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/screens/add_task_screen.dart';
import 'package:todoey/widgets/tasks_list.dart';

class TasksScreen extends StatefulWidget {

  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> tasks = [
    Task(name: "Aller chercher du lait à la cave"),
    Task(name: "Ranger la cave"),
    Task(name: "Déplacer les meubles pour les travaux")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: FaIcon(
                    FontAwesomeIcons.listUl,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text("Todoey",
                   style: TextStyle(
                     fontSize: 50,
                     color: Colors.white,
                     fontWeight: FontWeight.w700
                   ),
                ),
                Text("${tasks.length} Tasks",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TasksList(tasksListDataSource: tasks, taskChecked: (indexOfTaskDone){
                    setState(() {
                      tasks[indexOfTaskDone].toggleDone();
                    });
                },),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))
                )
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: FaIcon(FontAwesomeIcons.plus), onPressed: () {
          // Modal to create task
        showModalBottomSheet(context: context, builder: (BuildContext bc) => SingleChildScrollView( //This is to avoid keyboard hiding the view
            child:Container(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              child: AddTaskScreen((taskTitleResult) {
                      setState(() {
                        tasks.add(Task(name: taskTitleResult));
                      });
                      Navigator.pop(context);
                    },
              ),
            )
        ));
      },
      ),
    );
  }
}





