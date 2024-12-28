import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String imageName;
  const ImageWidget({super.key, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 5,right: 5),
      child: Image.asset(
        "assets/$imageName",
        fit: BoxFit.cover,
      ),
    );
  }
}
