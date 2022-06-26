import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'life_goals.dart';
import 'motivation.dart';
import 'todo.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Color> colors = [
    Colors.blueAccent,
    Colors.deepPurpleAccent,
    Colors.redAccent,
  ];

  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.white,
        buttonBackgroundColor: const Color.fromARGB(255, 242, 242, 242),
        backgroundColor: colors[page],
        animationDuration: const Duration(milliseconds: 400),
        index: page,
        items: const [
          Icon(
            Icons.home_outlined,
            size: 30,
          ),
          Icon(Icons.flight_takeoff, size: 30),
          Icon(Icons.book_outlined, size: 30),
        ],
        onTap: (itemsPage) {
          setState(() {
            page = itemsPage;
          });
        },
      ),
      body: IndexedStack(
        index: page,
        children: [
          selectedPage(index: 0),
          selectedPage(index: 1),
          selectedPage(index: 2)
        ],
      ),
    );
  }

  Widget selectedPage({required int index}) {
    Widget page;
    switch (index) {
      case 0:
        page = const TodoPage();
        break;
      case 1:
        page = const LifeGoalsPage();
        break;
      case 2:
        page = const Motivation();
        break;
      default:
        page = const TodoPage();
        break;
    }
    return page;
  }
}
