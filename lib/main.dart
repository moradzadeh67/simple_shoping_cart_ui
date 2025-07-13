import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  static var width;
  static var height;

  var black_color = Color(0xff2a2d3f);
  var grey_color = Color(0xffc4c4d5);
  var blue_color = Color(0xff7a99d7);

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width / 100;
    height = MediaQuery.of(context).size.height / 100;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(left: 15, top: height * 3),
            color: Color(0xfff5f6fa),
            width: width * 100,
            height: height * 100,
            child: Column(
              children: [
                TopIcon(),
                SizedBox(height: height * 4),
                SearchRow(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget TopIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.segment, size: 25),
        Container(
          margin: EdgeInsets.only(right: 15),
          child: CircleAvatar(
            backgroundColor: Color(0xff7a99d7),
            child: Icon(Icons.person, size: 25, color: Colors.white),
          ),
        ),
      ],
    );
  }

  Widget SearchRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            vertical: height * .25,
            horizontal: width * 2,
          ),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                spreadRadius: 2,
                blurRadius: 4,
                color: Colors.grey.withAlpha((0.2 * 255).toInt()),
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              Icon(Icons.search_rounded, size: 25, color: black_color),
              Container(
                width: width * 80,
                height: height * 5,
                margin: EdgeInsets.only(left: 5),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search',
                    hintStyle: TextStyle(color: grey_color, fontSize: 16),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
