import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xchange/model/checkbox_state.dart';

import 'package:xchange/services/change_currencies.dart';
import 'package:xchange/services/get_currencies.dart';
import 'package:provider/provider.dart';
import 'package:xchange/providers/currencies_provider.dart';
import 'package:xchange/widgets/card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final items = ['COP', 'USD'];

  late List<CheckBoxState> currencies;
  late double amount;

  @override
  Widget build(BuildContext context) {
    amount = context.watch<checkBoxProvider>().principalAmount;
    currencies = context.watch<checkBoxProvider>().currencies;
    List<String> activos = [];
    Map values = {
      'USD': copToUsd(amount),
      'JPY': copToJpy(amount),
      'EUR': copToEur(amount),
      'CAD': copToCad(amount),
      'CHF': copToChf(amount),
    };
    for (int i = 0; i < currencies.length; i++) {
      if (currencies[i].value) {
        activos.add(currencies[i].title);
      }
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Divisas"),
        actions: [
          IconButton(
              onPressed: () async {
                await Navigator.pushNamed(context, '/settings');
                //update the home page
                setState(() {});
              },
              icon: const Icon(Icons.settings))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                  setState(() {
                    context.read<checkBoxProvider>().setAmount(value);
                  });
                },
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.swap_vert)),
              activos.isNotEmpty
                  ? Column(
                      children: [
                        for (int i = 0; i < activos.length; i++)
                          CardWidget(
                            title: activos[i],
                            change: values[activos[i]].toString(),
                          )
                      ],
                    )
                  : Text("Vacío"),
              Center(
                child: ElevatedButton(
                  onPressed: () async {
                    await Navigator.pushNamed(context, '/currencies');
                    //funcione que tome las monedas elegidas
                    setState(() {
                      //activos = getActivos(currencies);
                    });
                  },
                  child: const Icon(Icons.add),
                ),
              ),
              Text(activos.toString())
            ],
          ),
        ),
      ),
    );
  }
}
