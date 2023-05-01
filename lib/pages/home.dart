import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xchange/services/change_currencies.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final items = ['COP', 'USD'];
  String usd = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Divisas"),
        actions: [
          IconButton(onPressed:  () async {
              await Navigator.pushNamed(context, '/settings');
              //update the home page
              setState(() {});
            },
             icon: const Icon(Icons.settings))
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
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xFFD9D9D9),
              ),
              onChanged: (value) {
                usd = copToUsd(value);
                setState(() {});
              },
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.swap_vert)),
            const SizedBox(
              height: 50,
              width: 250,
              child: Card(
                child: Center(child: Text('USD')),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 50,
              width: 250,
              child: Card(
                child: Center(child: Text(usd)),
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
      ),
    );
  }
}
