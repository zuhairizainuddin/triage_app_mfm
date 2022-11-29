class Patient {
  String name;
  int age;
  String gender;
  String id;
  double weight;
  double height;

  Patient({
    required this.name,
    required this.id,
    required this.age,
    required this.gender,
    required this.weight,
    required this.height,
  });

  void getSummary() {
    print('''

This patient's name is $name ($id). 
Patient is a $age years old $gender. 
Patient is $weight kg and $height m.
''');
  }
}
