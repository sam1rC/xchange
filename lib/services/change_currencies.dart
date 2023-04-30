import 'package:money_converter/Currency.dart';
import 'package:http/http.dart' as http;

String copToUsd(amount) {
  var amountParsed = double.parse(amount);
  var cop = amountParsed / 4699;
  String result = cop.toStringAsFixed(2);
  return result;
}
