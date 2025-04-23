import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp('hello world'));
}

class MainApp extends StatelessWidget {
  final String text;
  const MainApp(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: SplashScreen(text: 'hello')));
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: 400,
        width: double.infinity,
        child: Center(
          child: Container(
            color: Colors.grey,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Row(
                  children: [
                    RawMaterialButton(
                      onPressed: () {},
                      elevation: 2.0,
                      fillColor: Colors.white,
                      constraints: BoxConstraints(minWidth: 0.0),
                      child: Icon(Icons.pause, size: 35.0),
                      padding: EdgeInsets.all(15.0),
                      shape: CircleBorder(),
                    ),
                    RawMaterialButton(
                      onPressed: () {},
                      elevation: 2.0,
                      fillColor: Colors.white,
                      constraints: BoxConstraints(minWidth: 0.0),
                      child: Text('pushme'),
                      padding: EdgeInsets.all(18.0),
                      shape: CircleBorder(),
                    ),
                  ],
                ),
                Row(
                  children: [
                    CircleButton(),
                    RawMaterialButton(
                      onPressed: () {},
                      elevation: 2.0,
                      fillColor: Colors.white,
                      constraints: BoxConstraints(minWidth: 0.0),
                      child: Text('2'),
                      padding: EdgeInsets.all(18.0),
                      shape: CircleBorder(),
                    ),
                    RawMaterialButton(
                      onPressed: () {},
                      elevation: 2.0,
                      fillColor: Colors.white,
                      constraints: BoxConstraints(minWidth: 0.0),
                      child: Text('3'),
                      padding: EdgeInsets.all(18.0),
                      shape: CircleBorder(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  const CircleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      elevation: 2.0,
      fillColor: Colors.white,
      constraints: BoxConstraints(minWidth: 0.0),
      child: Text('1'),

      padding: EdgeInsets.all(15.0),
      shape: CircleBorder(),
    );
  }
}
