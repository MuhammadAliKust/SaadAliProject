import 'package:flutter/material.dart';
import 'package:saad_ali/assets_image.dart';
import 'package:saad_ali/login_view.dart';
import 'package:saad_ali/network_image.dart';
import 'package:saad_ali/notification_screen.dart';

import 'column_row.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotificationScreen(),
    );
  }
}
