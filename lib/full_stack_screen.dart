import 'package:flutter/material.dart';
import 'package:route_app/image_widget.dart';
import 'package:route_app/long_text.dart';

class FullStackScreen extends StatelessWidget {
  static const String routeNamed = 'fullStack';

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "RouteAppOne",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF001F84),
      ),
      body: Stack(children: [
        Image.asset(
          "assets/Bg.jpg",
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.02, vertical: height * 0.03),
          child: ListView(children: const [
            ImageWidget(imageName: "fullStack.jpeg"),
            Text(
              LongText.fullStack,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            )
          ]),
        ),
      ]),
    );
  }
}
