import 'package:flutter/material.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';
import 'package:movies_app/movies/presentation/screens/movie_screen.dart';

void main() {
  

  runApp(const MyApp());
  //setup done
}

class MyApp extends StatelessWidget { 
  const MyApp({super.key});

  // This widget is the root of your application.ss
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies App',
      theme: ThemeData(
     
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MovieScreen(),
    );
  }
}
