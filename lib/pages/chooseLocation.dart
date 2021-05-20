import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  @override
  void initState() {
    super.initState();
    print("init state running");
  }

  @override
  Widget build(BuildContext context) {
    print("init state running inside build method");
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text("Choose a location"),
          centerTitle: true,
          elevation: 0,
        ),
        body: ElevatedButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          child: Text("counter is $counter"),
        ));
  }
}
