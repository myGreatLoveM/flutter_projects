import 'package:demo_app/presentation/screens/counter/counter_screen.dart';
import 'package:demo_app/presentation/screens/first_page/first_page.dart';
import 'package:demo_app/presentation/screens/list_view/list_view._screen.dart';
import 'package:flutter/material.dart';

class RootBottomNavigation extends StatefulWidget {
  const RootBottomNavigation({super.key});

  @override
  State<RootBottomNavigation> createState() => _RootBottomNavigationState();
}

class _RootBottomNavigationState extends State<RootBottomNavigation> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          FirstPage(),
          CounterScreen(),
          ListViewScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Theme.of(context).colorScheme.secondary,
        // selectedFontSize: 16,
        // selectedItemColor: Theme.of(context).colorScheme.onSecondary,
        // unselectedFontSize: 14,
        // unselectedItemColor: Theme.of(context).colorScheme.onTertiaryContainer,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Examples',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Counter',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'List',
          ),
        ],
      ),
    );
  }
}
