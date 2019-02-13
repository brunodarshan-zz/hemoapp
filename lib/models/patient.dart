import 'package:hemoapp/models/hospital.dart';
import 'package:hemoapp/models/person.dart';

class Patient extends Person {
  bool needNow = true;
  Hospital interneship;

  Patient(String name, String document, String contact, String genre, this.interneship) : super(name, document, contact, genre);

  @override
  String toString() {
    return ["Patient", super.toString(), "internetshiping at", interneship.toString()].join(" ");
  }
}