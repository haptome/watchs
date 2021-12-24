import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:watchs/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Run(),
    );
  }
}

class Run extends StatefulWidget {
  const Run({Key? key}) : super(key: key);

  @override
  _RunState createState() => _RunState();
}

int _currentIndex = 0;

class _RunState extends State<Run> {
  void changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final pages = [const Home(), Container(), Container(), Container()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[_currentIndex],
      bottomNavigationBar: DotNavigationBar(
        currentIndex: _currentIndex,
        onTap: changePage,
        dotIndicatorColor: Colors.transparent,
        items: [
          /// Home
          DotNavigationBarItem(
              icon: const Icon(Icons.home),
              selectedColor: Colors.brown,
              unselectedColor: Colors.grey[200]),

          /// Likes
          DotNavigationBarItem(
              icon: const Icon(Icons.favorite_border),
              selectedColor: Colors.brown,
              unselectedColor: Colors.grey[200]),

          /// Search
          DotNavigationBarItem(
              icon: const Icon(Icons.search),
              selectedColor: Colors.brown,
              unselectedColor: Colors.grey[200]),

          /// Profile
          DotNavigationBarItem(
              icon: const Icon(Icons.person),
              selectedColor: Colors.brown,
              unselectedColor: Colors.grey[200]),
        ],
      ),
    );
  }
}
