import "package:flutter/material.dart";

class Exercicio5 extends StatelessWidget {
  const Exercicio5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercício 5"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
              "https://icons.iconarchive.com/icons/icons8/christmas-flat-color/512/christmas-tree-icon.png",
              height: 200,
            ),
            SizedBox(
              height: 50,
            ),
            Image.asset("assets/img/santa-claus.jpg", height: 200,)
          ],
        ),
      ),
    );
  }
}
