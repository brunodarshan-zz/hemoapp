import 'package:hemoapp/models/donation.dart';
import 'package:hemoapp/models/donor.dart';
import 'package:hemoapp/models/hospital.dart';
import 'package:hemoapp/models/patient.dart';
import 'package:hemoapp/models/person.dart';

main(){
  Donor a;
  Patient b, c;
  Hospital hgv;
  Donation e;

  a = Donor("João", "12345", "contato@email.com", "male");
  a.setBlood(BloodType.O, "positive");
  hgv = Hospital('Hospital Getulio Vargas');
  
  b = Patient("Gustavo", "", "", "male", hgv);
  b.setBlood(BloodType.A, "positive");
  
  print(a.toString());
  print(b.toString());
  print(a.donateTo(b).toString());
  
}