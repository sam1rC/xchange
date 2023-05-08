import 'package:flutter/foundation.dart';
import 'package:xchange/model/checkbox_state.dart';

class checkBoxProvider with ChangeNotifier {
  List<CheckBoxState> _currencies =[
    CheckBoxState(title: 'USD'),
    CheckBoxState(title: 'JPY'),
    CheckBoxState(title: 'EUR'),
    CheckBoxState(title: 'CAD'),
    CheckBoxState(title: 'CHF'),
  ];
  
  List<CheckBoxState> get currencies => _currencies; 

}