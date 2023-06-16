import 'package:flutter/material.dart';
import 'package:prov/Home.dart';
import 'package:prov/Provider/SlderProvider.dart';
import 'package:provider/provider.dart';

import 'Provider/FavouriteProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider( create: (_) => FavouriteProvider(),),
        ChangeNotifierProvider( create: (_) => SliderProvider(),),
      ],
      child: MaterialApp(
      title: 'Provider Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const Home(),
    ),);
  }
}

