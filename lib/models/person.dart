enum BloodType { A, B, AB, O}
enum RH { positive, negative }

abstract class Person {
  String name, document, contact, genre, _blood, _factor;
  int height, weight;

  Person([this.name, this.document, this.contact, this.genre]);

  BloodType bloodType(){
    switch(_blood){
      case 'A':  return BloodType.A; break;
      case 'B':  return BloodType.B; break;
      case 'AB': return BloodType.AB;break;
      default: return BloodType.O;
    }
  }

  void setBlood(BloodType bt, String factor){
    switch(bt){
      case BloodType.A: _blood = 'A'; break;
      case BloodType.B: _blood = 'B'; break;
      case BloodType.AB: _blood = 'AB'; break;
      case BloodType.O: _blood = 'O'; break;
    }
    _factor = factor != null ? factor : 'negative';
  }

  String blood(){
    return [_blood, _factor].join(" ");
  }

  String factorRH(){
    return _factor.toUpperCase();
  }

  @override
  String toString() {
    return [name, blood()].join(", ");
  }

}