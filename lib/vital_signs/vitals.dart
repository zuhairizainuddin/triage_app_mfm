class Vitals {
  int sbp;
  int hr;
  double temp;
  int spo2;
  int rr;

  Vitals({
    required this.sbp,
    required this.hr,
    required this.temp,
    required this.spo2,
    required this.rr,
  });

//Determine systolic
  int get scoreSbp {
    if (sbp > 199) {
      return 2;
    } else if (sbp > 99) {
      return 0;
    } else if (sbp > 79) {
      return 1;
    } else if (sbp > 69) {
      return 2;
    } else {
      return 3;
    }
  }

//Determine heart rate
  dynamic get scoreHr {
    if (hr > 129) {
      return 3;
    } else if (hr > 109) {
      return 2;
    } else if (hr > 99) {
      return 1;
    } else if (hr > 49) {
      return 0;
    } else if (hr > 39) {
      return 1;
    } else if (hr > 29) {
      return 2;
    } else {
      return 3;
    }
  }

//Determine temperature
  int get scoreTemp {
    if (temp > 38.9) {
      return 2;
    } else if (temp > 37.9) {
      return 1;
    } else if (temp > 35.9) {
      return 0;
    } else if (temp > 34.9) {
      return 1;
    } else if (temp > 33.9) {
      return 2;
    } else {
      return 3;
    }
  }

//Determine spo2
  int get scoreSpo {
    if (spo2 < 85) {
      return 3;
    } else if (spo2 < 90) {
      return 2;
    } else if (spo2 < 93) {
      return 1;
    } else {
      return 0;
    }
  }

//Determine respiratory rate
  int get scoreRr {
    if (rr > 35) {
      return 3;
    } else if (rr > 30) {
      return 2;
    } else if (rr > 20) {
      return 1;
    } else {
      return 0;
    }
  }

  void summary() {
    print(
        '''
SUMMARY OF VITAL SIGNS SCORES:
-----------------------------------------
Systolic blood pressure = $sbp mmHg ($scoreSbp)
Heart rate = $hr beats/minute ($scoreHr)
Respiratory rate = $rr per minute ($scoreRr)
Temperature = $temp celcius ($scoreTemp)
SpO2 = $spo2 ($scoreSpo)
''');
  }
}
