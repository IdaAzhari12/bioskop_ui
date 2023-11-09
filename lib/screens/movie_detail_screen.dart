import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MovieDetailScreen extends StatelessWidget {
  static const routeName = '/movie-detail';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 300,
            width: 370,
            color: Colors.white,
            child: Image.asset("assets/1.jpg", fit: BoxFit.cover),
          ),
          Container(
            color: Colors.white,
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/1.jpg",
                          fit: BoxFit.fill,
                          height: 170,
                          width: 120,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text("THE EARTH",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Arial',
                              fontSize: 20,
                              color: Colors.black,
                              decoration: TextDecoration.none)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                            width: 70,
                            child: Text("Genre",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 12,
                                    color: Colors.black,
                                    decoration: TextDecoration.none)),
                          ),
                          SizedBox(
                            height: 20,
                            width: 70,
                            child: Text("Drama",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 12,
                                    color: Colors.black,
                                    decoration: TextDecoration.none)),
                          ),
                          SizedBox(),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                            width: 70,
                            child: Text("Durasi",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 12,
                                    color: Colors.black,
                                    decoration: TextDecoration.none)),
                          ),
                          SizedBox(
                            height: 20,
                            width: 70,
                            child: Text("1 jam 51 menit",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 12,
                                    color: Colors.black,
                                    decoration: TextDecoration.none)),
                          ),
                          SizedBox(),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                            width: 70,
                            child: Text("Sutradara",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 12,
                                    color: Colors.black,
                                    decoration: TextDecoration.none)),
                          ),
                          SizedBox(
                            height: 20,
                            width: 70,
                            child: Text("Mark Linfield",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 12,
                                    color: Colors.black,
                                    decoration: TextDecoration.none)),
                          ),
                          SizedBox(),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                            width: 70,
                            child: Text("Rating Usia   ",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 12,
                                    color: Colors.black,
                                    decoration: TextDecoration.none)),
                          ),
                          Container(
                            padding: EdgeInsets.all(2.0),
                            color: Colors.grey,
                            child: Text(
                              "R13+",
                              style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontSize: 12,
                                  color: Colors.black,
                                  decoration: TextDecoration.none),
                            ),
                          ),
                          SizedBox(),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: OutlinedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Add to cart"),
                  duration: Duration(milliseconds: 500),
                ));
              },
              child: Text(
                "Add to cart",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
          ),
          Container(
            child: SizedBox(
              height: 34,
            ),
          ),
          Container(
            color: Colors.blue,
            width: 400,
            child: ButtonTheme(
              height: 20,
              minWidth: 50,
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  "Back",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
