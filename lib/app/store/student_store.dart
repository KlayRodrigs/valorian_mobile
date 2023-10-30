import 'package:mobx/mobx.dart';
part 'student_store.g.dart';

class StudentStore = StudentStoreBase with _$StudentStore;

abstract class StudentStoreBase with Store {
  @observable
  String name = "";
  @observable
  String date = "";
  @observable
  String gender = "";

  @action
  void setName(String value) => name = value;
  @action
  void setDate(String value) => date = value;
  @action
  void setGender(String value) => gender = value;
}
