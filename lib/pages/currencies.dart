import 'package:provider/provider.dart';
import 'package:xchange/model/checkbox_state.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import 'package:xchange/providers/currencies_provider.dart';

class CurrenciesPage extends StatefulWidget {
  const CurrenciesPage({super.key});

  @override
  State<CurrenciesPage> createState() => _CurrenciesPageState();
}

class _CurrenciesPageState extends State<CurrenciesPage> {
  @override
  bool value = false;

  

  Widget build(BuildContext context) {
    final currencies = context.watch<checkBoxProvider>().currencies;
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
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [...currencies.map(buildSingleCheckBox).toList(),
        ],
      ),
    );
  }

  Widget buildSingleCheckBox(CheckBoxState checkbox) => CheckboxListTile(
      activeColor: Colors.black,
      value: checkbox.value,
      title: Text(checkbox.title),
      onChanged: (value) => setState(() {
            checkbox.value = value!;
          }));
}
