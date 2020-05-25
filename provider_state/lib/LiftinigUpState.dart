import 'package:flutter/material.dart';
import 'package:providerstate/task.dart';
import 'package:providerstate/task_card.dart';


class LiftingUpStste extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List <Task> tasks = [
    Task(name: "Read a book"),
    Task(name: "call a book"),
    Task(name: "do a book")
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
      ),
      body: Center(
          child:ListView.builder(
              itemCount:  tasks.length,
              itemBuilder: (context , position){
                return TaskCard(
                  task: tasks[position],
                  remove: (){
                    setState(() {
                      tasks.remove(tasks[position]);
                    });

                  },
                );
              })
      ),
    );
  }
}

