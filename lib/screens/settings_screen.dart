import 'package:flutter/material.dart';

class MySettingsScreen extends StatelessWidget {
  const MySettingsScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Настройки',
            ),
          ],
        ),
      ),
    );
  }
}
