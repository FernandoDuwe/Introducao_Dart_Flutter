import "package:flutter/material.dart";

class ColumnAligment extends StatelessWidget {
  const ColumnAligment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Axis aligment"),
      ),
      body: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Texto 1"),
          Text("Texto 2")
        ],
      ),
    );
  }
}
