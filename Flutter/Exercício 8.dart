/*
  Enunciado: 	Vamos criar uma lista de tarefas. Essa lista deve possuir as seguintes
              características:

              - A lista precisa ser cadastravel pelo usuário;

              - Cada item deve ser exibido com um check, para que seja marcado como concluído;
*/

import 'package:flutter/material.dart';
import 'package:teste_visual/models/taskModel.dart';

class CheckBoxListTileScreen extends StatefulWidget {
  const CheckBoxListTileScreen({Key? key}) : super(key: key);

  @override
  State<CheckBoxListTileScreen> createState() => _CheckBoxListTileScreenState();
}

class _CheckBoxListTileScreenState extends State<CheckBoxListTileScreen> {
  List<TaskModel> tasks = [];

  TextEditingController taskController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Lista de tarefas"),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                      controller: this.taskController,
                      decoration: InputDecoration(
                          labelText: "Tarefa", border: InputBorder.none)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () {
                        if (taskController.text == "") {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                    title: Text("O campo Tarefa é obrigatório"),
                                    actions: [
                                      TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'Ok'),
                                          child: Text("Beleza"))
                                    ],
                                  ));
                        } else {
                          setState(() {
                            this
                                .tasks
                                .add(TaskModel(taskController.text, false));

                            taskController.text = "";
                          });
                        }
                      },
                      child: Text("Adicionar")),
                )
              ],
            ),
            Divider(),
            Expanded(
                child: ListView.builder(
                    itemCount: tasks.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CheckboxListTile(
                        value: this.tasks[index].check,
                        onChanged: (value) {
                          this.tasks[index].check = value!;

                          setState(() {});
                        },
                        title: Text(this.tasks[index].title,
                            style: (this.tasks[index].check
                                ? TextStyle(
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough)
                                : null)),
                      );
                    }))
          ],
        ));
  }
}
