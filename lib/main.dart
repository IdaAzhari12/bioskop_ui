import 'package:flutter/material.dart';
import 'package:ust_mobile_lanjut/screens/movie_detail_screen.dart';
import 'package:ust_mobile_lanjut/screens/movie_overview_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Film Bioskop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MovieOverviewScreen(),
      routes: {
        MovieDetailScreen.routeName: (context) => MovieDetailScreen(),
      },
    );
  }
}
