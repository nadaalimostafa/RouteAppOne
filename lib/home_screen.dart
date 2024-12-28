import 'package:flutter/material.dart';
import 'package:route_app/android_screen.dart';
import 'package:route_app/button_widget.dart';
import 'package:route_app/full_stack_screen.dart';
import 'package:route_app/image_widget.dart';
import 'package:route_app/ios_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String routeNamed = 'home';

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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width*0.01, vertical: height*0.03),
        child: const Column(
          children: [
            Expanded(child: ImageWidget(imageName: "Android.jpeg")),
            ButtonWidget(
              buttonTitle: " ANDROID COURSE",
              screenName: AndroidScreen.routeNamed,
            ),
            Expanded(child: ImageWidget(imageName: "IOS.jpeg")),
            ButtonWidget(
                buttonTitle: "IOS COURSE", screenName: IosScreen.routeNamed),
            Expanded(child: ImageWidget(imageName: "fullStack.jpeg")),
            ButtonWidget(
                buttonTitle: "FULL STACK",
                screenName: FullStackScreen.routeNamed),
          ],
        ),
      ),
    );
  }
}
