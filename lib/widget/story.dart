import 'package:flutter/material.dart';

class story extends StatelessWidget {
  const story({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.purple,
          backgroundImage: NetworkImage('https://i.pravatar.cc/100?u=$name'),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(name),
        ),
      
      ],
    );
  }
}
