import 'package:flutter/material.dart';
import 'package:ui_ig/dashboard/posting.dart';
import 'package:ui_ig/widget/story.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});

  final List users = [
    'anisa',
    'suibah',
    'budi',
    'fikri',
    'roy',
    'bahir',
    'subian'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.camera_alt_outlined, color: Colors.greenAccent),
            Expanded(
              child: Center(
                child: Text(
                  'Instagram',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.greenAccent,
                  ),
                ),
              ),
            ),
            Icon(Icons.send_outlined, color: Colors.greenAccent),
          ],
        ),
       
      ),
      body: Column(
        children: [
          SizedBox(
            height: 135,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return story(
                  name: users[index],
                );
              },
              itemCount: users.length,
            ),
          ),
          Divider(
            height: 1,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Posting(name: users[index]);
              },
              itemCount: users.length,
            ),
          ),
        ],
      ),
    );
  }
}
