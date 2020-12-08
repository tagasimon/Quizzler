import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  List<Widget> scoreTracker = [];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // width: 400.0,
      // height: 100.0,
      child: Column(
        children: [
          Expanded(
            child: FlatButton(
              minWidth: 300.0,
              color: Colors.green,
              // height: 100.0,
              child: Text("TRUE"),
              onPressed: () {
                setState(() {
                  scoreTracker.add(
                    Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                  );
                });
              },
            ),
          ),
          SizedBox(height: 10.0),
          Expanded(
            child: FlatButton(
              minWidth: 300.0,
              color: Colors.red,
              child: Text("FALSE"),
              onPressed: () {
                setState(() {
                  scoreTracker.add(
                    Icon(
                      Icons.close,
                      color: Colors.red,
                    ),
                  );
                });
              },
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: scoreTracker,
            ),
          )
        ],
      ),
    );
  }
}

// 0xFFF44336
// 0xFFF44336
