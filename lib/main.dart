import 'package:flutter/material.dart';
import 'package:polygon_map_app/presentation/map_screen/map_screen.dart';
import 'package:polygon_map_app/presentation/table_screen/table_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Recruitment App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MapScreen(),
        '/table': (context) => const TableScreen(),
      },
    );
  }
}
