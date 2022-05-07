import 'package:flutter/material.dart';


class MyCard extends StatelessWidget{

  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;

  const MyCard({Key key,
        this.balance,
        this.cardNumber,
        this.expiryMonth,
        this.expiryYear,
        this.color
  }) : super(key: key);

  @override
    Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
     child: Container(
      width: 300,
//            height: 140,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(color: color,
          borderRadius:  BorderRadius.circular(30)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 5,),
          Text("Balance",
              style: TextStyle(color: Colors.white)),
          SizedBox(height: 10,),
          Text("\$" + balance.toString(),
              style: TextStyle(color: Colors.white, fontSize: 30)),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // card number
              Text(cardNumber.toString(),
                  style: TextStyle(color: Colors.white)),
              // card exprity date
              Text(expiryMonth.toString() + '/' + expiryYear.toString(),
                  style: TextStyle(color: Colors.white)),
            ],
          )
        ],
      ),
    )
    );
  }
}
