import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saad_ali/providers/user.dart';
import 'package:saad_ali/screen_b.dart';

class ScreenA extends StatelessWidget {
  ScreenA({super.key});

  String name = 'Ali';
  String address = "Rwp";

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen A"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              userProvider.setName('Zia');
              userProvider.setEmail('ali@mail.com');
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ScreenB()));
            },
            child: Text("Go to Screen B")),
      ),
    );
  }
}
