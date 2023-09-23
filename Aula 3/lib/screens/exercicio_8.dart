import "package:flutter/material.dart";

import "../models/task_model.dart";

class Exercicio8 extends StatefulWidget {
  const Exercicio8({super.key});

  @override
  State<Exercicio8> createState() => _Exercicio8State();
}

class _Exercicio8State extends State<Exercicio8> {
  TextEditingController taskController = TextEditingController();
  TextEditingController searchController = TextEditingController();

  String filter = "";

  List<TaskModel> _tasks = [];

  List<TaskModel> getListByFilter() {
    List<TaskModel> list = [];

    list.addAll(_tasks);

    list.removeWhere((element) {
      String title = element.title.toUpperCase();

      if ((filter.isNotEmpty) && (!title.contains(filter.toUpperCase())))
        return true;

      return false;
    });

    return list;
  }

  bool get listIsComplete {
    bool isComplete = true;

    _tasks.forEach((element) {
      if (!element.done) isComplete = false;
    });

    return isComplete;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          child: TextField(
            controller: taskController,
            decoration: InputDecoration(
                labelText: "Insira o título da tarefa",
                border: InputBorder.none),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                if (taskController.text.trim().isNotEmpty) {
                  setState(() {
                    _tasks.add(
                        TaskModel(title: taskController.text, done: false));
                  });

                  taskController.text = "";
                }
              },
              icon: Icon(Icons.save))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text("Filtro"),
              subtitle: TextField(
                controller: searchController,
                decoration: InputDecoration(labelText: "Filtro"),
                onChanged: (value) {
                  setState(() {
                    filter = value;
                  });
                },
              ),
            )
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: getListByFilter().length,
        itemBuilder: (context, index) {
          TaskModel taskModel = getListByFilter()[index];

          return CheckboxListTile(
            value: taskModel.done,
            title: Text(taskModel.title),
            onChanged: (value) {
              setState(() {
                _tasks[index].done = (value ?? false);
              });
            },
          );
        },
      ),
      bottomNavigationBar: (this.listIsComplete && _tasks.isNotEmpty
          ? Container(
              color: Colors.lightGreen,
              height: 50,
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Lista completa!",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          : Container(
              height: 0,
            )),
    );
  }
}
