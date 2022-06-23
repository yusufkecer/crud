class validator {
  String? name(String? value) {
    if (value!.length < 3) {
      return "lütfen geçerli bir isim giriniz";
    } else
      return null;
  }

  String? tc(String? value) {
    if (value!.length < 11) {
      return "lütfen geçerli bir tc giriniz";
    } else
      return null;
  }

  String? age(String? value) {
    try {
      int value2 = int.parse(value!);
      if (value2 <= 18) {
        return "lütfen geçerli bir yas giriniz";
      } else
        return null;
    } catch (hata) {
      print("hataYakalandı");
    }
  }
}
