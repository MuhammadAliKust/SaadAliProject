import 'package:flutter/material.dart';

class BottomSheetView extends StatelessWidget {
  const BottomSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet Demo"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
                showModalBottomSheet(context: context, builder: (context){
                  return Container(
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                      Text("This is bottom sheet")
                    ],),
                  );
                });
            },
            child: Text("Bottom Sheet")),
      ),
    );
  }
}
