import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/navigation.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';

class AppNavbar extends HookWidget {
  const AppNavbar({super.key});
  static final navbarPaths = ['/', '/portofolio', '/settings'];
  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);
    final selectedIndex = useMemoized(() {
      final index = navbarPaths.indexOf(router
          .routeInformationParser.configuration
          .findMatch(router.location)
          .fullPath);
      if (0 <= index && index < navbarPaths.length) {
        return index;
      } else {
        return null;
      }
    }, [router.location]);
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart), label: "Portofolio"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
      ],
      onTap: (value) {
        try {
          final path = navbarPaths[value];
          goTo(context, path);
        } catch (e) {
          Logger.talker.error(e);
        }
      },
      currentIndex: selectedIndex ?? 0,
      selectedItemColor:
          selectedIndex != null ? Colors.tealAccent : Colors.white70,
      unselectedItemColor: Colors.white70,
    );
  }
}
