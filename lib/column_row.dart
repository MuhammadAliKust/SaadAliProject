import 'package:flutter/material.dart';

class ColumnRowView extends StatelessWidget {
  const ColumnRowView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post View"),
      ),
      body: Column(
        children: [
          Text(
            "In publishing and graphic design, Lorem ipsum is a placeholder ",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available.",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.thumb_up),
              Icon(Icons.comment),
              Icon(Icons.bookmark),
              Icon(Icons.share),
            ],
          )
        ],
      ),
    );
  }
}
