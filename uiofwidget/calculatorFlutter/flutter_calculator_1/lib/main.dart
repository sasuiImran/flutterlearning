import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Scaffold(body: Center(child: Calculator())));
  }
}

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "23+7",
            style: TextStyle(
              color: Colors.black,
              fontSize: 40,
              fontWeight: FontWeight.normal,
            ),
          ),
          Text(
            "30",
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 40,
              fontWeight: FontWeight.normal,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: CircleButton("AC", color: Colors.orangeAccent)),
                Expanded(child: CircleButton("(", color: Colors.blueGrey)),
                Expanded(child: CircleButton(")", color: Colors.blueGrey)),
                Expanded(child: CircleButton("/", color: Colors.blueGrey)),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: CircleButton("7")),
                Expanded(child: CircleButton("8")),
                Expanded(child: CircleButton("9")),
                Expanded(child: CircleButton("*", color: Colors.blueGrey)),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: CircleButton("4")),
                Expanded(child: CircleButton("5")),
                Expanded(child: CircleButton("6")),
                Expanded(child: CircleButton("-", color: Colors.blueGrey)),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: CircleButton("1")),
                Expanded(child: CircleButton("2")),
                Expanded(child: CircleButton("3")),
                Expanded(
                  child: CircleButton(
                    "+",
                    color: Colors.blueGrey,
                    textColor: Colors.amber,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: CircleButton("0", color: Colors.black)),
                Expanded(child: CircleButton(".", color: Colors.blueGrey)),
                Expanded(
                  child: CircleButton("âŒ«", color: Colors.orangeAccent),
                ),
                Expanded(child: CircleButton("=", color: Colors.blueGrey)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  const CircleButton(
    this.text, {
    super.key,
    this.color = Colors.black,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      elevation: 2.0,
      fillColor: color,
      constraints: BoxConstraints(minWidth: 0.0),
      child: Text(text, style: TextStyle(color: this.textColor)),
      padding: EdgeInsets.all(15.0),
      shape: CircleBorder(),
    );
  }
}
