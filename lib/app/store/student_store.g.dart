// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StudentStore on StudentStoreBase, Store {
  late final _$nameAtom = Atom(name: 'StudentStoreBase.name', context: context);

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$dateAtom = Atom(name: 'StudentStoreBase.date', context: context);

  @override
  String get date {
    _$dateAtom.reportRead();
    return super.date;
  }

  @override
  set date(String value) {
    _$dateAtom.reportWrite(value, super.date, () {
      super.date = value;
    });
  }

  late final _$genderAtom =
      Atom(name: 'StudentStoreBase.gender', context: context);

  @override
  String get gender {
    _$genderAtom.reportRead();
    return super.gender;
  }

  @override
  set gender(String value) {
    _$genderAtom.reportWrite(value, super.gender, () {
      super.gender = value;
    });
  }

  late final _$StudentStoreBaseActionController =
      ActionController(name: 'StudentStoreBase', context: context);

  @override
  void setName(String value) {
    final _$actionInfo = _$StudentStoreBaseActionController.startAction(
        name: 'StudentStoreBase.setName');
    try {
      return super.setName(value);
    } finally {
      _$StudentStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDate(String value) {
    final _$actionInfo = _$StudentStoreBaseActionController.startAction(
        name: 'StudentStoreBase.setDate');
    try {
      return super.setDate(value);
    } finally {
      _$StudentStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setGender(String value) {
    final _$actionInfo = _$StudentStoreBaseActionController.startAction(
        name: 'StudentStoreBase.setGender');
    try {
      return super.setGender(value);
    } finally {
      _$StudentStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
date: ${date},
gender: ${gender}
    ''';
  }
}
