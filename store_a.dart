import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'store_a.g.dart';

class StoreA = StoreBase with _$StoreA;

abstract class StoreBase with Store {
  @observable
  String name = "";

  @observable
  String image = "";

  @observable
  String email = "";

  @action
  void changeName(String value) {
    name = value;
  }

  @action
  void changeImage(String value) {
    image = value;
  }

  @action
  void changeEmail(String value) {
    email = value;
  }
}
