import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/screens/increment.dart';

class MyInfoScreen extends StatelessWidget {
  const MyInfoScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    var count = context.watch<Count>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Информация тет-а-тет',
            ),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton(
              onPressed: () {
                context.read<Count>().increment();
              },
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              height: 20,
            ),
            Text('Количество нажатий ${count.count}'),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/settings');
              },
              child: const Text('Переход в настройки'),
            ),
          ],
        ),
      ),
    );
  }
}
