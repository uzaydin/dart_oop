import 'models/education/education.dart';
import 'models/user/careers.dart';
import 'models/user/instructors.dart';
import 'models/user/students.dart';

void main() {
  Students student = Students("Beginner",
      fullName: "Uzay Aydın",
      email: "test@gmail.com",
      password: 2222,
      memberType: "Öğrenci",
      phoneNumber: 222222222);

  student.signup();
  student.showInfo();

  Instuctors instuctors = Instuctors("C# - Dart ",
      fullName: "Mark Zuckerberg",
      email: "test3@gmail.com",
      password: 22222,
      memberType: "Öğretmen");

  instuctors.showInfo();
  instuctors.logout();

  Careers careers = Careers.info("Uzay", "test3@gmail.com", 05342222222,
      student: false,
      lookForWork: true,
      experience: "1 yıldan az",
      cityForWork: "Istanbul",
      Field: "Mobil Gelistirme",
      descForBackend: "Temel operasyonları yapabilecek seviyedeyim",
      descForFrontEnd: "Temel operasyonları yapabilecek seviyedeyim",
      communication: true);

  careers.submit();

  Education education = Education("Kubilay",
      headLine: "Mobil Geliştirici(Flutter)",
      langType: "Dart/Flutter",
      details:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam");

  education.publish();
  education.showInfo();
}
