import "package:flutter/material.dart";

class CountForm extends StatefulWidget {
  const CountForm({super.key});

  @override
  State<CountForm> createState() => _CountFormState();
}

class _CountFormState extends State<CountForm> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              count.toString(),
              style: TextStyle(fontSize: 24, fontFamily: "Arial"),
            ),
            ElevatedButton(onPressed: () {
              
            }, child: Text("Salvar"))
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            backgroundColor: (count == 0 ? Colors.grey : Colors.blue),
            onPressed: (count == 0 ? null : () {
            setState(() {
              count--;
            });
          }),
          child: Icon(Icons.remove),),
          SizedBox(width: 20,),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                count++;
              });
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
