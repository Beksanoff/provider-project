import 'package:flutter/material.dart';
import 'package:provider_project/screens/screens.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const MyHomePage(title: 'Главный экран'),
        '/info': (context) => const MyInfoScreen(title: 'Информационный экран'),
        '/settings': (context) => const MySettingsScreen(title: 'Настройки'),
      },
    );
  }
}
