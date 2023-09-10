import 'package:demo_app/application/theme_services.dart';
import 'package:demo_app/presentation/screens/navigation_example/navigation_example_screen1.dart';
import 'package:demo_app/root_bottom_navigation.dart';
import 'package:demo_app/them.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'presentation/screens/navigation_example/navigation_example_screen2.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeService(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(
      builder: (context, themeService, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          home: const RootBottomNavigation(),
          routes: <String, WidgetBuilder>{
            '/root': (BuildContext context) => const RootBottomNavigation(),
            '/screenOne': (BuildContext context) =>
                const NavigationExampleScreen1(),
            '/screenTwo': (BuildContext context) =>
                const NavigationExampleScreen2(),
          },
        );
      },
    );
  }
}
