import 'package:flutter/material.dart';

class NameWidget extends StatelessWidget {

  final String name;
  final TextStyle style;

  NameWidget({this.name, this.style});

  @override
  Widget build(BuildContext context) {
    final List<String> namePartitions = name.split(" ");

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: namePartitions[0].toUpperCase(), style: style),
          if (namePartitions.length > 1)
            TextSpan(text: "\n${namePartitions[1].toUpperCase()}", style: style),
        ]
      ),
    );
  }
}
