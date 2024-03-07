import 'users.dart';

class Careers extends Users {
  bool student;
  bool lookForWork;
  String experience;
  String cityForWork;
  String Field;
  String? gitHub;
  String? courses;
  String descForBackend;
  String descForFrontEnd;
  String? language;
  String? aboutMe;
  bool communication;

// gitHub, courses, language, aboutMe opsiyonel seceneklerdir.

  Careers.info(fullName, email, phoneNumber,
      {required this.student,
      required this.lookForWork,
      required this.experience,
      required this.cityForWork,
      required this.Field,
      this.gitHub,
      this.courses,
      required this.descForBackend,
      required this.descForFrontEnd,
      this.language,
      this.aboutMe,
      required this.communication})
      : super.info(
            fullName: fullName, email: email, phoneNumber: phoneNumber) {}

  void submit() {
    print("""
        ${fullName} || ${email} ||  ${phoneNumber} || ${student} || ${lookForWork} || ${experience} || 
        ${cityForWork} || ${Field} || ${gitHub} || ${courses} || ${descForBackend} || ${descForFrontEnd} || 
        ${language} || ${aboutMe} || ${communication}
        """);
  }
}
