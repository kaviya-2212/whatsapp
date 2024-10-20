import 'package:chat1/pageview.dart';
import 'package:flutter/material.dart';

class contacts extends StatefulWidget {
  const contacts({super.key});

  @override
  State<contacts> createState() => _contactsState();
}

class _contactsState extends State<contacts> {
  List<String> images = [
    'assets/dp.jpg',
    'assets/dp2.jpg',
    'assets/dp3.jpg',
    'assets/dp4.jpg',
    'assets/dp5.jpg',
  ];
  List<String> names = ["meta", 'Kaviya', 'Raam', 'Ramesh', 'Divya'];
  List<String> times = [
    'with llama 3.2',
    '12.45pm',
    '01.32am',
    '03.45pm',
    '12.12am'
  ];
  // List<String> msg = ["hii", "Hloo", "how are you", "long time no see"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (int i = 0; i < images.length; i++)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Pageview(
                              image: images[i],
                              name: names[i],
                              time: times[i],
                            )),
                  );
                },
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        // margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("${images[i]}"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          color: Colors.grey,
                        ),

                        // child: Image(
                        // image: AssetImage('dp2.jpg'),
                        // fit: BoxFit.cover,
                        // ),
                      ),
                      title: Text("${names[i]}"),
                      subtitle: Text(""),
                      trailing: Text("${times[i]}"),
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
