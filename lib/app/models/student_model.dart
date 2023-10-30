class StudentModel {
  StudentModel(
      {required this.studentName,
      required this.studentAge,
      required this.studentGender});
  String studentName;
  String studentAge;
  String studentGender;

  Map<String, dynamic> toMap() {
    return {
      "student_name": studentName,
      "student_born_date": studentAge,
      "student_gender": studentGender
    };
  }
}
