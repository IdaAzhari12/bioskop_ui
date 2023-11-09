import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ust_mobile_lanjut/widgets/movie_grid.dart';

class MovieOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(text: "Sedang Tayang"),
            Tab(text: "Akan Datang"),
          ]),
          title: Text("Film Bioskop"),
        ),
        body: TabBarView(children: [MovieGrid(), MovieGrid()]),
      ),
    );
  }
}
