import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import './home_tab.dart';
import './list_tab.dart';
import './home_1.dart';
import './check_box.dart';
import './star.dart';

//import 'package:url_launcher/url_launcher.dart';
void main() {
  runApp(DevicePreview(builder: (context) => MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          // bottomNavigationBar: BottomNavigationBar(
          //   backgroundColor: Colors.amber,
          //   type: BottomNavigationBarType.fixed,
          //   onTap: (index) {},
          //   currentIndex: 2,
          //   items: const [
          //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.work_history),
          //       label: 'work history',
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.music_note),
          //       label: 'Music',
          //     ),
          //   ],
          // ),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.list_alt_rounded), text: "List"),
              Tab(icon: Icon(Icons.home), text: 'home'),
              Tab(icon: Icon(Icons.check_box), text: 'check'),
              Tab(icon: Icon(Icons.star), text: 'star'),
            ],
          ),
          appBar: AppBar(
            centerTitle: false,
            bottom: TabBar(
              tabs: [
                Icon(Icons.list_alt_rounded),
                Icon(Icons.home),
                Icon(Icons.check_box),
                Icon(Icons.star),
              ],
            ),
            title: Text('Tutorials '),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.home)),
              IconButton(onPressed: () {}, icon: Icon(Icons.refresh)),
              IconButton(
                onPressed: () {
                  //async {
                  print("ABC");
                  // final Uri url = Uri.parse('https://flutter.dev');
                  // if (!await launchUrl(url)) {
                  //   throw Exception('Could not launch https://flutter.dev');
                  // }
                },
                icon: Icon(Icons.menu),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.login)),
            ],
          ),
          body: TabBarView(
            children: [HomeTab(), ListTab(), Home1(), CheckBox(), Star()],
          ),
        ),
      ),
    );
  }
}
