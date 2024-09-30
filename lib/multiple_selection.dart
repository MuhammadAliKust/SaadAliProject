import 'package:flutter/material.dart';

class MultipleSelectionView extends StatefulWidget {
  const MultipleSelectionView({super.key});

  @override
  State<MultipleSelectionView> createState() => _MultipleSelectionViewState();
}

class _MultipleSelectionViewState extends State<MultipleSelectionView> {
  List<int> selectedIndex = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Multiple Selection Screen"),
        ),
        body: ListView.builder(
            itemCount: 8,
            itemBuilder: (context, i) {
              return ListTile(
                onTap: () {
                  if (selectedIndex.contains(i)) {
                    selectedIndex.remove(i);
                  } else {
                    selectedIndex.add(i);
                  }

                  setState(() {});
                },
                leading: Icon(Icons.notifications),
                tileColor:
                    selectedIndex.contains(i) ? Colors.blue : Colors.white,
                title: Text("Index : $i"),
                subtitle: Text("Selected Index : $selectedIndex"),
                trailing: Icon(Icons.arrow_forward_ios),
              );
            }));
  }
}
