import 'package:flutter/material.dart';
import 'package:route_app/app_colors.dart';

class ButtonWidget extends StatelessWidget {
  final String screenName;
  final String buttonTitle;
  const ButtonWidget({required this.buttonTitle,required this.screenName});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.buttonColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(screenName);
        },
        child: Text(
          buttonTitle,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          ),
      ),
    );
  }
}
