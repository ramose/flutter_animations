import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _height = 40.0;
  double _heightDefault = 40.0;

  _updateValue() {
    setState(() {
      _height = 300;
    });
  }

  _resetValue() {
    setState(() {
      _height = _heightDefault;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.green[600],
                    child:
                        Text('update', style: TextStyle(color: Colors.white)),
                    onPressed: () => _updateValue(),
                  ),
                  RaisedButton(
                    color: Colors.blue,
                    child: Text('reset', style: TextStyle(color: Colors.white)),
                    onPressed: () => _resetValue(),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            ),
            AnimatedContainer(
              duration: Duration(seconds: 1),
              curve: Curves.bounceOut,
              color: Colors.orange,
              width: 80,
              height: _height,
            )
          ],
        ),
      ),
    );
  }
}
