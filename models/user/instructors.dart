import 'users.dart';

// Eğitmenler

class Instuctors extends Users {
  String? languages;

  // phoneNumber ve languages zorunlu kılınmamıştır.

  Instuctors(this.languages,
      {required fullName,
      required email,
      phoneNumber,
      required password,
      required memberType})
      : super.full(
          fullName: fullName,
          email: email,
          password: password,
          phoneNumber: phoneNumber,
          memberType: memberType,
        ) {}

  @override
  void showInfo() {
    super.showInfo(); // Üst sınıftaki showInfo() metodunu çağırıyoruz
  }
}
