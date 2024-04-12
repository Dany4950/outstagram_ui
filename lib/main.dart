import 'package:flutter/material.dart';
import 'package:outstagram_ui/home_page.dart';
import 'package:outstagram_ui/icons.dart';
import 'package:outstagram_ui/photos.dart';
import 'package:outstagram_ui/profile.dart';
import 'package:outstagram_ui/stories.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey[200],
            centerTitle: false,
            title: Text("P. Lion Paul "),
            leading: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => home_page()));
              },
              child: Icon(
                Icons.arrow_left,
                size: 45,
              ),
            ),
          ),
          body: Column(
            children: [
              first_part(),
              stories(),
              iconss(),
              photos(),
            ],
          )
          ),
    );
  }
}

class use_container extends StatelessWidget {
  use_container({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.amber[800],
    );
  }
}
