class employee {
  late String? name;
  late String? TC;
  late int? age;
  late final String image;

  employee._(this.image);

  employee.withName({this.name, this.age, this.TC});

  static employee imageObject=employee._("https://cdn1.ntv.com.tr/gorsel/49yx_7WhVU2AgWnPgdwYmg.jpg?width=990&height=660&mode=crop&scale=both&v=20200419071959431");

  @override
  String toString() {
    return "adSoyad:${this.name},yas:${this.age}, TC:${this.TC}";
  }
}

class a {
  String anahtar;
  a._(this.anahtar);
  a key = a._("dsf");
}
