import 'package:triage_app/vital_signs/vitals.dart';

void getDestination(Vitals vitalSign, int avpu) {
  final ews =
      vitalSign.scoreHr + vitalSign.scoreRr + vitalSign.scoreSbp + vitalSign.scoreSpo + vitalSign.scoreTemp + avpu;

  final message = 'This patient\'s EWS score is $ews. He should go to: ';

  switch (ews) {
    case 0:
      print('$message GREEN');
      break;
    case 1:
      print('$message AMBER');
      break;
    case 2:
      print('$message YELLOW');
      break;
    case 3:
      print('$message RED');
      break;
    default:
      print('$message RED');
  }
}
