import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saad_ali/assets_image.dart';
import 'package:saad_ali/bottom_nav_bar.dart';
import 'package:saad_ali/bottom_sheet.dart';
import 'package:saad_ali/dialog_box.dart';
import 'package:saad_ali/dynamic_list_view.dart';
import 'package:saad_ali/google_maps.dart';
import 'package:saad_ali/grid_view_demo.dart';
import 'package:saad_ali/login_view.dart';
import 'package:saad_ali/multiple_selection.dart';
import 'package:saad_ali/network_image.dart';
import 'package:saad_ali/notification_screen.dart';
import 'package:saad_ali/page_view_builder.dart';
import 'package:saad_ali/providers/user.dart';
import 'package:saad_ali/screen_a.dart';
import 'package:saad_ali/single_selection_view.dart';
import 'package:saad_ali/tabbar_view.dart';

import 'column_row.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => UserProvider())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenA(),
    );
  }
}
