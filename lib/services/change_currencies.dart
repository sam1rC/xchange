import 'package:money_converter/Currency.dart';
import 'package:http/http.dart' as http;

String copToUsd(amount) {
  String result;
  var cop = amount / 4699;
  result = cop.toStringAsFixed(2);

  return result;
}

String copToJpy(amount) {
  String result;
  var cop = amount / 33.44;
  result = cop.toStringAsFixed(2);

  return result;
}

String copToEur(amount) {
  String result;
  var cop = amount / 4952;
  result = cop.toStringAsFixed(2);

  return result;
}

String copToCad(amount) {
  String result;
  var cop = amount / 3371;
  result = cop.toStringAsFixed(2);

  return result;
}

String copToChf(amount) {
  String result;
  var cop = amount / 5064;
  result = cop.toStringAsFixed(2);

  return result;
}
