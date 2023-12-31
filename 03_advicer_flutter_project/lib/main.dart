import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:advicer_flutter_project/theme.dart';
import 'package:advicer_flutter_project/03_application/core/services/theme_service.dart';
import 'package:advicer_flutter_project/03_application/pages/advice_page/advice_page.dart';
import 'injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(
    ChangeNotifierProvider(
      create: ((context) => ThemeService()),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(
      builder: (context, themeService, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode:
              themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          home: const AdvicePageWrapperProvider(),
        );
      },
    );
  }
}
