import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ajustes"),
        ),
      body:
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Idioma'),
                ),
              ),
       ),
    );
  }
}