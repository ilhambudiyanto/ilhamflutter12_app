import 'package:flutter/material.dart';
import 'package:ilhamflutter12app/Bsm_package.dart';
import 'package:ilhamflutter12app/Bsm_stream.dart';



class home extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<home> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("  "),),

        body: Center (child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            RaisedButton(
              child: Text(' BloC Steam '),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Bsm_steam();
                }));
              },
            ),
            RaisedButton(
              child: Text(' BloC Package '),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Bsm_package();
                }));
              },
            ),
          ],
        ),
        ),
      ),
    );
  }
}
