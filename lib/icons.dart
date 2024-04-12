import 'package:flutter/material.dart';
import 'package:outstagram_ui/home_page.dart';
import 'package:outstagram_ui/main.dart';

class iconss extends StatefulWidget {
  const iconss({super.key});

  @override
  State<iconss> createState() => _photosState();
}

class _photosState extends State<iconss> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          thickness: 0.5,
          color: Colors.grey[600],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Container(
                  height: 50,
                  width: 50,
                  // color: Colors.amber,
                  child: Center(
                      child: Text(
                    "Email",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70.0),
              child: Container(
                  height: 50,
                  width: 50,
                  // color: Colors.amber,
                  child: Center(
                      child: Text("Site",
                          style: TextStyle(fontWeight: FontWeight.w600)))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70.0),
              child: Container(
                  height: 50,
                  width: 58,
                  // color: Colors.amber,
                  child: Center(
                      child: Text("Contact",
                          style: TextStyle(fontWeight: FontWeight.w600)))),
            ),
          ],
        ),
        Divider(
          thickness: 0.5,
          color: Colors.grey[600],
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => home_page()));
              },
              child: Container(
                  margin: EdgeInsets.only(top: 6, left: 60),
                  child: Icon(Icons.grid_on_rounded)),
            ),
            Container(
                margin: EdgeInsets.only(top: 6, left: 60),
                child: Icon(Icons.video_collection_outlined)),
            Container(
                margin: EdgeInsets.only(top: 6, left: 60),
                child: Icon(Icons.heart_broken)),
            Container(
                margin: EdgeInsets.only(top: 6, left: 60),
                child: Icon(Icons.person_pin)),
          ],
        ),

        //grid starts here

        // Expanded(
        //   child: Container(
        //     color: Colors.amberAccent,
        //     child: GridView.builder(
        //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //             crossAxisCount: 3),
        //         itemBuilder: (context, index) {
        //           return Container(
        //             height: 100,
        //             width: 100,
        //             decoration: BoxDecoration(color: Colors.cyanAccent),
        //           );
        //         }),
        //   ),
        // ),
      ],
    );
  }
}
