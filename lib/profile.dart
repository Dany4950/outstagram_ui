import 'package:flutter/material.dart';

class first_part extends StatefulWidget {
  const first_part({super.key});

  @override
  State<first_part> createState() => first_partState();
}

class first_partState extends State<first_part> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            // color: Colors.amber,
            height: 150,
            width: 130,
            child: Column(
              children: [
                CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Wildlife_at_Maasai_Mara_%28Lion%29.jpg/440px-Wildlife_at_Maasai_Mara_%28Lion%29.jpg')),
                Text(
                  "Lion paul",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text("   Ruler / Africa ")
              ],
            )),
        Container(
          // color: Colors.black45,
          height: 140,
          width: 250,
          child: Column(children: [
            Row(
              children: [
                // Text("           15        5k         100"),
                // Text("post       followers      following  ")

                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    children: [
                      Text(
                        "12",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "  Posts ",
                        style: TextStyle(color: Colors.red[500]),
                      ),
                    ],
                  ),
                ),

                SizedBox(width: 14),

                Column(
                  children: [
                    Text(
                      "15k",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "  followers  ",
                      style: TextStyle(color: Colors.red[500]),
                    ),
                  ],
                ),

                SizedBox(width: 10),

                Column(
                  children: [
                    Text(
                      "49",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "  following ",
                      style: TextStyle(color: Colors.red[500]),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 60),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue[300]),
                    child: Center(
                        child: Text(
                      "Follow",
                      style: TextStyle(
                          fontWeight: FontWeight.w400, color: Colors.white),
                    )),
                    height: 50,
                    width: 130,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.settings_suggest,
                    ),
                  ),

                  // CircleAvatar(backgroundImage: NetworkImage(),)
                ],
              ),
            )
          ]),
        )
      ],
    );
  }
}
