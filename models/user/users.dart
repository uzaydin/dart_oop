import 'instructors.dart';
import 'students.dart';

class Users {
  late String fullName;
  late String email;
  late String password;
  late String memberType;
  int? phoneNumber;

  Users(this.fullName) {}

  Users.full(
      {required this.fullName,
      required this.email,
      required this.password,
      required this.memberType,
      this.phoneNumber}) {}

  Users.info(
      {required this.fullName,
      required this.email,
      required this.phoneNumber}) {}

  // Bilgileri, students ve instructor class'ındaki farklılıklara göre duzenli sıralama

  void showInfo() {
    String phoneInfo =
        phoneNumber != null ? phoneNumber.toString() : 'Belirtilmemiş';

    String additionalInfo = '';

    if (this is Instuctors) {
      additionalInfo = 'Diller: ${(this as Instuctors).languages}';
    } else if (this is Students) {
      additionalInfo = 'Tecrübe: ${(this as Students).experience}';
    }

    print("""
    Ad Soyad: $fullName,
    Email: $email,
    Şifre: $password,
    Üyelik Tipi: $memberType,
    Telefon Numarası: $phoneInfo,
    $additionalInfo
  """);
  }

  // Hesaptan Çıkış
  void logout() {
    print('${fullName} adlı kullanıcı sistemden çıkış yapmıştır.');
  }
}
