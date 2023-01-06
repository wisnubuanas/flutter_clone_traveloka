import 'package:flutter/material.dart';
import 'package:flutter_clone_traveloka/pages/awal.dart';
import 'package:flutter_clone_traveloka/pages/explore.dart';
import 'package:flutter_clone_traveloka/pages/pesanan.dart';
import 'package:flutter_clone_traveloka/pages/profile.dart';
import 'package:flutter_clone_traveloka/pages/simpan.dart';

void main() {
  runApp(const MyApp());
}
// void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Traveloka Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Traveloka'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final _layoutPage = [
    Awal(),
    Explore(),
    Pesanan(),
    Simpan(),
    Profil(),
  ];

  void _onTabItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: _layoutPage.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ("Awal"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outlined),
            label: ("Explore"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_sharp),
            label: ("Pesanan"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.my_library_books_outlined),
            label: ("Simpan"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ("Profile"),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onTabItem,
      ),
    );
  }
}
