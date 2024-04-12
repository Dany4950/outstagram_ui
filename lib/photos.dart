import 'package:flutter/material.dart';

class photos extends StatefulWidget {
  const photos({super.key});

  @override
  State<photos> createState() => _photosState();
}

class _photosState extends State<photos> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.cyan,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://www.eastafricansafari.net/wp-content/uploads/2023/08/When-Is-the-Best-Time-to-Go-on-an-African-Safari.jpg'),
                        fit: BoxFit.fill)),
                height: 100,
                width: 100,
              );
            }),
      ),
    );
  }
}
