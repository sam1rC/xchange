import 'package:money_converter/Currency.dart';
import 'package:http/http.dart' as http;

String copToUsd(amount) {
  String result;
  if( amount == ''){
    var cop = 0;
    result = cop.toStringAsFixed(2);
  }
  else{
    var amountParsed = double.parse(amount);
    var cop = amountParsed / 4699;
    result = cop.toStringAsFixed(2);
  }
  
  return result;
}
