import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tut/provider/home_screen_provider.dart';
import 'package:provider_tut/screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print('build');
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeScreenProvider()),
      ],
      child: MaterialApp(
        routes: {"/": (context) => HomePage()},
      ),
    );
  }
}
