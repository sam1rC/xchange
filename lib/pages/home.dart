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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
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
            const SizedBox(
              height: 15,
            ),
            const TextField(
              decoration:
                  InputDecoration(filled: true, fillColor: Color(0xFFD9D9D9)),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.swap_vert)),
            const TextField(
              readOnly: true,
              decoration:
                  InputDecoration(filled: true, fillColor: Color(0xFFD9D9D9)),
            ),
            const SizedBox(
              height: 15,
            ),
            const TextField(
              readOnly: true,
              decoration:
                  InputDecoration(filled: true, fillColor: Color(0xFFD9D9D9)),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: const Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
