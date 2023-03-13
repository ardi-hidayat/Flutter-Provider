import 'package:flutter/material.dart';
import 'package:flutter_provider/gender_page.dart';
import 'package:flutter_provider/gender_provider.dart';
import 'package:flutter_provider/height_provider.dart';
import 'package:flutter_provider/home_page.dart';
import 'package:flutter_provider/weight_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<WeightProvider>(
          create: (context) => WeightProvider(),
        ),
        ChangeNotifierProvider<HeightProvider>(
            create: (context) => HeightProvider())
      ],
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
