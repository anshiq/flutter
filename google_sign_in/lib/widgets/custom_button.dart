// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class custom_button extends StatelessWidget {
  final String text; //to make final is imp.....
  final VoidCallback onPress;
  const custom_button({Key? key, required this.text, required this.onPress})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPress,
        child: Text(
          text,
          style: TextStyle(fontSize: 17),
        ));
  }
}
