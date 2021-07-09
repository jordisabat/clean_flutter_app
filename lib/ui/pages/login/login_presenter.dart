import 'dart:async';

abstract class LoginPresenter {
  Stream get emailErrorStream;
  Stream get passwordErrorStream;
  Stream get isFormValidStream;
  Stream get isLoadingStream;

  void validateEmail(String email);
  void validatePassword(String validatePassword);
  void auth();
}
