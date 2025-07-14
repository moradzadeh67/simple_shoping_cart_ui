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
                Container(
                  margin: EdgeInsets.only(top: height * 4),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Explore',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 23,
                      color: black_color,
                    ),
                  ),
                ),
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
                width: width * 65,
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
        Container(
          margin: EdgeInsets.only(right: 15),
          child: Stack(
            children: [
              Icon(Icons.shopping_cart_outlined, size: 35, color: black_color),
              Container(
                width: 18,
                height: 18,
                margin: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  '4',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
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
