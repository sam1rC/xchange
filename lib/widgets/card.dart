import 'package:flutter/material.dart';
//Sizer tool
import 'package:sizer/sizer.dart';

//This widget is the card being displayed in the home page with each event title.
class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.title,
     required this.change,
  });
  final String title;
  final String change;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text(title),
      Text(change)
    ],
    );
  }
}
