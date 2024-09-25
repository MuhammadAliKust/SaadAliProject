import 'package:flutter/material.dart';

class SingleSelectionView extends StatefulWidget {
  const SingleSelectionView({super.key});

  @override
  State<SingleSelectionView> createState() => _SingleSelectionViewState();
}

class _SingleSelectionViewState extends State<SingleSelectionView> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Single Selection Screen"),
        ),
        body: ListView.builder(
            itemCount: 8,
            itemBuilder: (context, i) {
              return ListTile(
                onTap: () {
                  selectedIndex = i;
                  setState(() {});
                },
                leading: Icon(Icons.notifications),
                tileColor:selectedIndex == i ? Colors.blue:Colors.white,
                title: Text("Index : $i"),
                subtitle: Text("Selected Index : $selectedIndex"),
                trailing: Icon(Icons.arrow_forward_ios),
              );
            }));
  }
}
