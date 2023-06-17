import 'package:flutter/material.dart';

enum Orientation { vertical, horizontal }

class Destination {
  const Destination(this.index, this.title, this.icon, this.routeName);
  final int index;
  final String title;
  final IconData icon;
  final String routeName;
}

class Menu extends StatefulWidget {
  const Menu({super.key, required this.orientation});
  final Orientation orientation;

  @override
  State<StatefulWidget> createState() {
    return _MenuState();
  }
}

class _MenuState extends State<Menu> {
  static const List<Destination> allDestinations = <Destination>[
    Destination(0, 'Home', Icons.home, '/'),
    Destination(1, 'Daftar Sebagai UMKM', Icons.business, ''),
    Destination(2, 'Daftar Sebagai Investor', Icons.school, '/register'),
    Destination(3, 'Blog', Icons.library_books, '/blog'),
  ];

  @override
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
        onDestinationSelected: (int index) {
          Navigator.restorablePushNamed(
            context,
            allDestinations[index].routeName,
          );
        },
        destinations: allDestinations.map((Destination destination) {
          return NavigationDestination(
            icon: Icon(destination.icon),
            label: destination.title,
          );
        }).toList());
  }
}
