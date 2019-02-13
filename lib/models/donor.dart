import 'package:hemoapp/models/donation.dart';
import 'package:hemoapp/models/patient.dart';
import 'package:hemoapp/models/person.dart';

class Donor extends Person {
  Donor(String name, String document, String contact, String genre) : super(name, document, contact, genre);

  Donation donate(){
    return Donation(from: this);
  }

  Donation donateTo(Patient to){
    var donation = this.donate();
    donation.to = to;
    return donation;
  }
}