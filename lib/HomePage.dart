import 'package:flutter/material.dart';
import "dart:math";

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  AssetImage diceImage;
  AssetImage diceImage2;

  void rollDice() {
    int random = (1 + Random().nextInt(6));
    int random2 = (1 + Random().nextInt(6));

    AssetImage newImage;
    AssetImage newImage2;


    switch (random) {
      case 1:
        newImage = one;
        break;
      case 2:
        newImage = two;
        break;
      case 3:
        newImage = three;
        break;
      case 4:
        newImage = four;
        break;
      case 5:
        newImage = five;
        break;
      case 6:
        newImage = six;
        break;
    }
    switch (random2) {
      case 1:
        newImage2 = one;
        break;
      case 2:
        newImage2 = two;
        break;
      case 3:
        newImage2 = three;
        break;
      case 4:
        newImage2 = four;
        break;
      case 5:
        newImage2 = five;
        break;
      case 6:
        newImage2 = six;
        break;
    }
    setState(() {
      diceImage = newImage;
      diceImage2 = newImage2;

    });
  }

  @override
  void initState() {
    super.initState();
    diceImage = one;
    diceImage2 = six;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Roller'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: diceImage,
                width: 200.0,
                height: 150.0,
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Image(
                  image: diceImage2,
                  width: 200.0,
                  height: 150.0,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: RaisedButton(
                  onPressed: rollDice,
                  color: Colors.yellow,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 22),
                  shape: StadiumBorder(),
                  child: Text(
                    "Roll the dice!",
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
