import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:udemy_clone/pages/home/home_page.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (_) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curso de Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
    );
  }
}
