import 'package:flutter/material.dart';

class Pageview extends StatefulWidget {
  final String name;
  final String time;
  final String image;

  const Pageview(
      {super.key, required this.name, required this.time, required this.image});

  @override
  State<Pageview> createState() => _PageviewState();
}

class _PageviewState extends State<Pageview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.call),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.message),
          )
        ],
        title: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(widget.image)),
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: Colors.grey,
              ),

              // child: Image(
              // image: AssetImage('dp2.jpg'),
              // fit: BoxFit.cover,
              // ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.name),
                Text(
                  widget.time,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
