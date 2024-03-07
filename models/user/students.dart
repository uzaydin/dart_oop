import 'users.dart';

// Öğrenciler

class Students extends Users {
  String experience;

  // phoneNumber zorunlu kılınmıştır.
  Students(this.experience,
      {required fullName,
      required email,
      required password,
      required memberType,
      required phoneNumber})
      : super.full(
          fullName: fullName,
          email: email,
          password: password,
          phoneNumber: phoneNumber,
          memberType: memberType,
        ) {}

  // Bilgileri görüntüleme

  @override
  void showInfo() {
    super.showInfo(); // Üst sınıftaki showInfo() metodunu çağırıyoruz
  }
}
