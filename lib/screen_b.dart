import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  final String name;
  final String address;

  const ScreenB({super.key, required this.name, required this.address});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen B"),
      ),
      body: Column(
        children: [
          Text(
            name,
            style: TextStyle(fontSize: 40),
          ),
          Text(
            address,
            style: TextStyle(fontSize: 40),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Go Back to Screen A")),
          ),
        ],
      ),
    );
  }
}
