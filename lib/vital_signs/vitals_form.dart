import 'dart:io';

import 'vitals.dart';

Vitals openVitalsForm() {
  print('Please enter systolic blood pressure:');
  String sbp = stdin.readLineSync()!;
  int convertSbp = int.parse(sbp);

  print('Please enter heart rate:');
  String hr = stdin.readLineSync()!;
  int convertHr = int.parse(hr);

  print('Please enter respiratory rate:');
  String rr = stdin.readLineSync()!;
  int convertRr = int.parse(rr);

  print('Please enter temperature:');
  String temp = stdin.readLineSync()!;
  double convertTemp = double.parse(temp);

  print('Please enter SpO2:');
  String spo = stdin.readLineSync()!;
  int convertSpo = int.parse(spo);

  final vital1 = Vitals(hr: convertHr, rr: convertRr, temp: convertTemp, spo2: convertSpo, sbp: convertSbp);

  vital1.summary();

  return vital1;
}
