import 'package:flutter/material.dart';

class PopupPage extends StatefulWidget {
  const PopupPage({super.key});

  @override
  State<PopupPage> createState() => _PopupPageState();
}

class _PopupPageState extends State<PopupPage> {
  //ithe ah function ithi uriga function name matte ithi widgetoh ethieme le
  //managa oga name ichugoyethi function name gu
   void _showPopup(BuildContext context) {
    //ee function call panthana loga show dialog ni oga property undai 
    //athi call pannindam
    showDialog(
      //ah dialog box yada open avavalani mention pannethe context
      context: context,
    
      // showDialog
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Popup Title'),
          content: Text('This is a simple popup in Flutter.'),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the popup
              },
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popup Demo'),
      ),
      body: Center(
        //ithi button 
        child: ElevatedButton(
          //thanoda onpressed la oga function call pannindam
          onPressed: () {
            //function call
            _showPopup(context);
          },
          child: Text('Show Popup'),
        ),
      ),
    );
  }
}