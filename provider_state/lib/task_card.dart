import 'package:flutter/material.dart';
import 'package:providerstate/task.dart';

class TaskCard extends StatelessWidget {
  final Task task;
  final Function remove ;

  TaskCard({this.task,this.remove});

  @override
  Widget build(BuildContext context) {
    return Card(
      child:  ListTile(
        title: Text(task.name),
        trailing: IconButton(
            icon: Icon(Icons.clear,color: Colors.red,),
            onPressed: (){
              remove();
            }
        ),
      ),
    );
  }
}
