import 'package:flutter/material.dart';
import 'package:saad_ali/asset_image.dart';
import 'package:saad_ali/network_image.dart';

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
      home: AssetImageView(),
    );
  }
}
