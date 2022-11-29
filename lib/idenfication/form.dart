import 'dart:io';

import 'identification.dart';

void getIdentity() {
  print('Name:');
  String userName = stdin.readLineSync()!;

  print('ID:');
  String userID = stdin.readLineSync()!;

  print('Age:');
  String age = stdin.readLineSync()!;

  print('Gender:');
  String yourGender = stdin.readLineSync()!;

  print('Weight:');
  String weight = stdin.readLineSync()!;

  print('Height:');
  String height = stdin.readLineSync()!;

  int convAge = int.parse(age);
  double convWeight = double.parse(weight);
  double convHeight = double.parse(height);

  final patient1 =
      Patient(name: userName, id: userID, age: convAge, gender: yourGender, weight: convWeight, height: convHeight);

  patient1.getSummary();
}
