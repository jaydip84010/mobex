// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_a.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StoreA on StoreBase, Store {
  final _$nameAtom = Atom(name: 'StoreBase.name');

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

  final _$imageAtom = Atom(name: 'StoreBase.image');

  @override
  String get image {
    _$imageAtom.reportRead();
    return super.image;
  }

  @override
  set image(String value) {
    _$imageAtom.reportWrite(value, super.image, () {
      super.image = value;
    });
  }

  final _$emailAtom = Atom(name: 'StoreBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$StoreBaseActionController = ActionController(name: 'StoreBase');

  @override
  void changeName(String value) {
    final _$actionInfo =
        _$StoreBaseActionController.startAction(name: 'StoreBase.changeName');
    try {
      return super.changeName(value);
    } finally {
      _$StoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeImage(String value) {
    final _$actionInfo =
        _$StoreBaseActionController.startAction(name: 'StoreBase.changeImage');
    try {
      return super.changeImage(value);
    } finally {
      _$StoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeEmail(String value) {
    final _$actionInfo =
        _$StoreBaseActionController.startAction(name: 'StoreBase.changeEmail');
    try {
      return super.changeEmail(value);
    } finally {
      _$StoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
image: ${image},
email: ${email}
    ''';
  }
}
