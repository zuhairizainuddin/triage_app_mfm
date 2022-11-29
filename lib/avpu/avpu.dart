import 'dart:io';

int getAVPUScore() {
  int score = 3;
  print('Is the patient alert?');
  String isAlert = stdin.readLineSync()!.toLowerCase();
  if (isAlert == 'yes') {
    score = 0;
  } else {
    print('Does the patient responds to voice?');
    String isVoice = stdin.readLineSync()!.toLowerCase();
    if (isVoice == 'yes') {
      score = 1;
    } else {
      print('Does the patient respond to pain?');
      String isPain = stdin.readLineSync()!.toLowerCase();
      if (isPain == 'yes') {
        score = 2;
      }
    }
  }
  print('The AVPU score is $score');
  return score;
}
