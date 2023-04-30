import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final items = ['COP', 'USD'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Divisas"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
      ),
      body: Column(
        children: [
          CupertinoPicker(
              itemExtent: 64,
              onSelectedItemChanged: (index) {},
              children: items
                  .map((item) => Center(
                        child: Text(
                          item,
                          style: const TextStyle(fontSize: 25),
                        ),
                      ))
                  .toList()),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              decoration:
                  InputDecoration(filled: true, fillColor: Colors.white60),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
