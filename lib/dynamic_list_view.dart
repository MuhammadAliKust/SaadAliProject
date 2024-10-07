import 'package:flutter/material.dart';
import 'package:saad_ali/models/notification.dart';

class DynamicListView extends StatelessWidget {
  DynamicListView({super.key});

  List<NotificationModel> myList = [
    NotificationModel(title: "Ali", subTitle: 'Flutter 1'),
    NotificationModel(title: "Saad", subTitle: 'Flutter 2'),
    NotificationModel(title: "Zia", subTitle: 'Flutter 3'),
    NotificationModel(title: "Zia", subTitle: 'Flutter 3'),
    NotificationModel(title: "Zia", subTitle: 'Flutter 3'),
    NotificationModel(title: "Zia", subTitle: 'Flutter 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dynamic List View"),
      ),
      body: ListView.builder(
          itemCount: myList.length,
          itemBuilder: (context, i) {
            return ListTile(
              leading: const Icon(Icons.notifications),
              title: Text(myList[i].title),
              subtitle: Text(myList[i].subTitle),
            );
          }),
    );
  }
}
