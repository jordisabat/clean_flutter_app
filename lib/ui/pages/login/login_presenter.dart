import 'dart:async';

abstract class LoginPresenter {
  Stream get emailErrorStream;
  Stream get passwordErrorStream;

  void validateEmail(String email);
  void validatePassword(String validatePassword);
}
