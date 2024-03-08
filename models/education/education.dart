import '../user/users.dart';

class Education extends Users {
  String headLine;
  String langType;
  late String details;
  DateTime date = DateTime.now();

  Education(
    super.fullName, {
    required this.headLine,
    required this.langType,
    required this.details,
  }) {}

  void publish() {
    print(
        '${headLine} konu başlıklı içeriğimizin detayları ${details}.  ${fullName.toUpperCase()} tarafından ${langType} kullanılarak hazırlanmıştır.');
  }

  void showInfo() {
    print("""

    Başlık: ${headLine},
    Programlama Dili: ${langType},
    Yazar: ${fullName},
    Tarih: ${date}
""");
  }
}
