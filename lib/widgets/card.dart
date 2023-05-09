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
      Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 80,
            child: Card(
              color: Color.fromARGB(255, 243, 243, 243),
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                ), //Text
              ), //Center
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: Card(
              color: Color.fromARGB(255, 243, 243, 243),
              child: Center(
                child: Text(
                  change,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                ), //Text
              ), //Center
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
