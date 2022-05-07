import 'package:flutter/material.dart';

class MyIcons extends StatelessWidget{

  final String iconImagePath;
  final String buttonText;

  const MyIcons({Key key, this.iconImagePath, this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
      children: <Widget>[
        // Icon
        Container(
          height: 70,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                blurRadius: 30,
                spreadRadius: 4,
              ),
            ],
          ),
          child: Center(
            child: Image.asset(iconImagePath),
          ),
        ),
        SizedBox(height: 8,),
        // TEXT
        Text(buttonText,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey[500]
          ),)
      ],
    ),
    );

    throw UnimplementedError();
  }
}
