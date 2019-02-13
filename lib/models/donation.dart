import 'package:hemoapp/models/donor.dart';

class Donation {
  Donor from;
  dynamic to; // Receive Patient of Hospital;
  DateTime date;
  int quantity = 600;

  Donation({this.from, this.to, this.quantity}) : date = DateTime.now();

  Map<String, dynamic> toMap(){
    Map<String, dynamic> map = {
      'from': from,
      'to': to,
      'date': date.toIso8601String(),
      'quantity': quantity
    };
    return map;
  }

  @override
  String toString() {
    return [from.toString(), "donate to", to.toString(), "in", date.toString()].join(" ");
  }
}