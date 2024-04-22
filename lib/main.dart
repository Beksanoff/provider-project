import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/app.dart';
import 'package:provider_project/screens/increment.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Count()),
      ],
      child: const MyApp(),
    ),
  );
}
