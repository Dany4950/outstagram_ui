import 'package:flutter/material.dart';
import 'package:outstagram_ui/main.dart';
import 'package:outstagram_ui/yotube_player.dart';

class home_page extends StatefulWidget {
  home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          leading: Icon(
            Icons.apple,
            size: 40,
          ),
          actions: [
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyApp()));
                },
                child: Icon(
                  Icons.arrow_right_sharp,
                  size: 50,
                )),
          ],
          centerTitle: false,
          title: Text(
            "|    Feed",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Container(
                margin: EdgeInsets.only(top: 25),
                height: 47,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(color: Colors.black),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0),
                      child: (Icon(Icons.search)),
                    ),
                    Text(" Search")
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(
                              'https://t4.ftcdn.net/jpg/03/64/21/11/240_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg',
                            ),
                          ),
                          Text('your story')
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(
                              'https://t3.ftcdn.net/jpg/01/73/77/00/240_F_173770068_LRQyNUZQn9WtQyJoJsOEwK8qwBzypBm0.jpg',
                            ),
                          ),
                          Text('Alex')
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(
                              'https://t3.ftcdn.net/jpg/03/70/29/26/240_F_370292674_QS5nA0bJgyRD6VzYycTQdSWhhSHQJbQZ.jpg',
                            ),
                          ),
                          Text('Dany')
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(
                              'https://t4.ftcdn.net/jpg/05/50/90/39/240_F_550903968_miZqOmryenaez81W3nw5IPlPTRH4c3a7.jpg',
                            ),
                          ),
                          Text('Sofia')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 0.5,
              color: Colors.grey[400],
            ),
            // YouTubePlayerPage(),
            //
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                      'https://t4.ftcdn.net/jpg/05/50/90/39/240_F_550903968_miZqOmryenaez81W3nw5IPlPTRH4c3a7.jpg',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Sofia",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 250.0),
                  child: Text(":",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                ),
              ],
            ),

            Container(
              height: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.black),
              child: Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://hips.hearstapps.com/hmg-prod/images/easter-songs-1647463854.jpeg?crop=1.00xw:0.752xh;0,0.248xh&resize=1200:*'))),
              ),
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 8),
                  child: Icon(Icons.thumb_up_alt_rounded),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.comment),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.share),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 180.0),
                  child: Icon(Icons.send),
                )
              ],
            ),

            Row(
              children: [
                Text(
                  '         140k likes',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),

            Row(
              children: [
                Text(
                  "         Sofia",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("  Happy Easter y'all"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
