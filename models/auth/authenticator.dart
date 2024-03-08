import '../user/users.dart';

class Authenticator {
  // Giriş kontrollerinin şifre ve emaile göre doğrulanması

  static bool login(
    Users user,
    String email,
    String enteredPassword,
  ) {
    if (enteredPassword == user.password && email == user.email) {
      print('${user.email} olarak giriş yapıldı.');
      return true;
    } else {
      print('Giriş başarısız. Kullanıcı adı veya şifre hatalı.');
      return false;
    }
  }

  // Kayit olma
  static void signup(String fullName, String email, String password) {
    print(
        'Üyelik kaydınız başarılı bir şekilde gerçekleşmiştir. Ad Soyad: ${fullName} || Email: ${email} || Şifreniz: ${password}');
  }
}
