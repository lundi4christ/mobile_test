import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_test/util/mycard.dart';
import 'package:mobile_test/util/myicons.dart';
//import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class  HomePage extends StatefulWidget {
   const HomePage({ Key key}) : super (key: key);

  @override
  State<HomePage> createState() => _HomePageState ();
}

class _HomePageState  extends State<HomePage> {

  // page controller
 // final _controller = PageController();

  @override
  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[200],
        body: SafeArea (
            child: Column(children: <Widget>[
            //app bar
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row (
                        children: <Widget>[
                          Text("My",
                            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          Text("Cards",
                              style: TextStyle(fontSize: 30)
                          ),
                        ],
                      ),

                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.add),
                      )

                    ],
                  )
               ),

              SizedBox(height: 25),

          // cards
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                 // controller: _controller,
                  children: <Widget>[
                    MyCard(
                      balance: 5250.20,
                      cardNumber: 13020302,
                      expiryMonth: 10,
                      expiryYear: 22,
                      color: Colors.deepPurple[300],
                    ),
                    MyCard(
                      balance: 3550.20,
                      cardNumber: 37220302,
                      expiryMonth: 11,
                      expiryYear: 23,
                      color: Colors.green[300],
                    ),
                    MyCard(
                      balance: 4550.20,
                      cardNumber: 77220302,
                      expiryMonth: 11,
                      expiryYear: 23,
                      color: Colors.blue[300],
                    ),
                  ],
                )
              ),


        // SmoothPageIndicator(controller: _controller, count: 3),

              SizedBox(height: 50),
          //3 buttons -> send, pay and bills

              Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  //send button
                  MyIcons(iconImagePath: 'lib/images/send.png',
                  buttonText: 'Send',
                  ),

                  MyIcons(iconImagePath: 'lib/images/salary.png',
                    buttonText: 'Pay',
                  ),

                  MyIcons(iconImagePath: 'lib/images/invoices.png',
                    buttonText: 'Bills',
                  ),

                  MyIcons(iconImagePath: 'lib/images/credit-cards.png',
                    buttonText: 'Credit',
                  ),
                ],
              ),

          // column stats, transactions


        ]),
    ),
    );
  }
}
