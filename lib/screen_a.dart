import 'package:flutter/material.dart';
import 'package:saad_ali/screen_b.dart';

class ScreenA extends StatelessWidget {
  ScreenA({super.key});

  String name = 'Ali';
  String address = "Rwp";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen A"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ScreenB(
                            name: name,
                            address: address,
                          )));
            },
            child: Text("Go to Screen B")),
      ),
    );
  }
}
