import "package:flutter/material.dart";

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: [ Image(
              image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Palmeiras_logo.svg/800px-Palmeiras_logo.svg.png"),
            ),
            Image(
              image: AssetImage("assets/img/logo.png"),
            )
            ]),
      ),
    );
  }
}
