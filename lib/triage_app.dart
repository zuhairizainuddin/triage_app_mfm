import 'package:triage_app/destination/destination.dart';

import 'avpu/avpu.dart';
import 'idenfication/form.dart';
import 'vital_signs/vitals_form.dart';

void main() {
  getIdentity();
  final vitalSign = openVitalsForm();
  final avpu = getAVPUScore();
  getDestination(vitalSign, avpu);
}
