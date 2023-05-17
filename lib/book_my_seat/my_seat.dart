import 'package:flutter/material.dart';

List<String> imagePaths = [
  "../assets/armchair.png",

];

class ImageCardScreenEfficient extends StatelessWidget {
  List<Widget> renderImages() {
    var temp = <Widget>[];
    for (var i=0;i<15;i++) {
      // add some conditional logic here

        temp.add(Image.asset('../assets/armchair.png',
            height: 44,
            scale: 2.5,
            // color: Color.fromARGB(255, 15, 147, 59),
            opacity:
            const AlwaysStoppedAnimation<double>(0.5)),
          // imagePath: "../assets/armchair.png",
        );

    }
    return temp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Cards Efficient "),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: renderImages(),
          ),
        ),
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  final String imagePath;

  ImageCard({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Image.asset(imagePath),
    );
  }
}