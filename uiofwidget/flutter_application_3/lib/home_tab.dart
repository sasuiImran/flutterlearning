import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    var list = List.generate(100, (index) {
      return Text('Text $index');
    });
    return ListView(children: list);
  }
}
 
      // children: [
      //   Container(height: 150, color: Colors.amber, child: Text('hello-1')),
      //   Container(height: 250, color: Colors.green, child: Text('hello-2')),
      //   Container(height: 250, color: Colors.red, child: Text('hello-3')),
      //   Container(height: 250, color: Colors.blue, child: Text('hello-4')),
      //   Container(height: 150, color: Colors.amber, child: Text('hello-5')),
      //   Container(height: 150, color: Colors.grey, child: Text('hello-6')),
      //   Container(height: 150, color: Colors.cyan, child: Text('hello-7')),
      // ],
