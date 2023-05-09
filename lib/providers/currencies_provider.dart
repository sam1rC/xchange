import 'package:flutter/foundation.dart';
import 'package:xchange/model/checkbox_state.dart';

class checkBoxProvider with ChangeNotifier {
  List<CheckBoxState> _currencies = [
    CheckBoxState(title: 'USD'),
    CheckBoxState(title: 'JPY'),
    CheckBoxState(title: 'EUR'),
    CheckBoxState(title: 'CAD'),
    CheckBoxState(title: 'CHF'),
  ];

  double _principalAmount = 0;

  List<CheckBoxState> get currencies => _currencies;

  double get principalAmount => _principalAmount;

  void setAmount(newAmount) {
    if (newAmount != '') {
      newAmount = double.parse(newAmount);
      _principalAmount = newAmount;
      notifyListeners();
    } else {
      _principalAmount = 0;
    }
  }
}
