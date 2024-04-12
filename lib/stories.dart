import 'package:flutter/material.dart';
import 'package:outstagram_ui/main.dart';

class stories extends StatefulWidget {
  stories({super.key});

  @override
  State<stories> createState() => _storiesState();
}

class _storiesState extends State<stories> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 04.0),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgMhePD7k0lxdI8F0AWT3yu-UV70CKqP69f-CzLRK0TeaG_VEAtUKUYYjWfh5cq7-jwfNyrEPYkwj6-NNDj1LHNVhCk-iu8M-Ko3HHU4D0JiC2qME_p4t9oqWqykRRZf3Wp0tGp5nJAI68F/s640/Charminar_Hyderabad_1.jpg')),
                            color: Color.fromARGB(255, 0, 0, 0),
                            borderRadius: BorderRadius.circular(70)),
                      ),
                      Text("story"),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
