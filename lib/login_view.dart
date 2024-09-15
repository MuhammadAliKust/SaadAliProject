import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login View"),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                label: Text("Email"),
                hintText: 'test@gmail.com',
                prefixIcon: Icon(Icons.email),
                suffixIcon: Icon(Icons.email)),
          ),
          TextField(
            decoration: InputDecoration(
                label: Text("Password"),
                hintText: 'Password should be 6 or more characters',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility)),
          ),
          SizedBox(height: 50,),
          ElevatedButton(onPressed: (){}, child: Text("Login"))
        ],
      ),
    );
  }
}
