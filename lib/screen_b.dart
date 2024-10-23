import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saad_ali/providers/user.dart';

class ScreenB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen B"),
      ),
      body: Column(
        children: [
          Text(
            userProvider.getName().toString(),
            style: TextStyle(fontSize: 40),
          ),
          Text(
            userProvider.getEmail().toString(),
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
