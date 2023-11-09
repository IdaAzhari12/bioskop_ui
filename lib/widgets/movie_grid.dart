import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ust_mobile_lanjut/screens/movie_detail_screen.dart';

class MovieGrid extends StatelessWidget {
  static List<String> movieName = [
    'THE EARTH',
    'UFO',
    'THE FUTURE',
  ];

  static List movieUrl = ['assets/1.jpg', 'assets/2.jpg', 'assets/3.jpg'];

  final int value;
  const MovieGrid({this.value = 0}) : assert(value != null);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            OutlinedButton(
                child: Text('Semua Bioskop'),
                style: OutlinedButton.styleFrom(
                  primary: Colors.blue,
                  side: BorderSide(
                    color: Colors.black,
                  ),
                ),
                onPressed: () {}),
            OutlinedButton(
                child: Text('XXI'),
                style: OutlinedButton.styleFrom(
                  primary: Colors.black,
                  side: BorderSide(
                    color: Colors.black,
                  ),
                ),
                onPressed: () {}),
            OutlinedButton(
                child: Text('CGV'),
                style: OutlinedButton.styleFrom(
                  primary: Colors.black,
                  side: BorderSide(
                    color: Colors.black,
                  ),
                ),
                onPressed: () {}),
          ],
        ),
        Flexible(
          child: ListView.builder(
            padding: const EdgeInsets.all(10.0),
            itemCount: movieName.length,
            itemBuilder: (context, index) {
              return Container(
                height: 200,
                child: Card(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Image.asset(
                          movieUrl[index],
                          height: 150,
                          width: 100,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text(
                                    movieName[index],
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Arial',
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(2.0),
                                  color: Colors.grey,
                                  child: Text("R13+"),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  child: Text("Drama"),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 10,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: List.generate(5, (index) {
                                    return Icon(
                                      index < value
                                          ? Icons.star
                                          : Icons.star_border,
                                    );
                                  }),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(2.0),
                                  child: SizedBox(
                                    height: 25,
                                    width: 55,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text('XXI'),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.orange,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(2.0),
                                  child: SizedBox(
                                    height: 25,
                                    width: 60,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text('CGV'),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.red,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.all(2.0),
                                  child: SizedBox(
                                    width: 120,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context).pushNamed(
                                            MovieDetailScreen.routeName);
                                      },
                                      child: Text('Beli Tiket'),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.indigo[900],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
