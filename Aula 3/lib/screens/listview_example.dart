import "package:flutter/material.dart";

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: ListView(
        reverse: true,
        children: [
          Text("Texto 1"),
          Text("Texto 2"),
          Text("Texto 3"),
        ],
      ),
    );
  }
}
