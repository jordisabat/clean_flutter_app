import 'package:clean_flutter_app/presentation/presenters/presenters.dart';
import 'package:clean_flutter_app/presentation/protocols/validation.dart';
import 'package:faker/faker.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class ValidationSpy extends Mock implements Validation {}

ValidationSpy validation;
StreamLoginPresenter sut;
String email;
String password;

PostExpectation mockValidationCall(String field) => when(
    validation.validate(field: anyNamed('field'), value: anyNamed('value')));

void mockValidation({String field, String value}) {
  mockValidationCall(field).thenReturn(value);
}

void main() {
  setUp(() {
    validation = ValidationSpy();
    sut = StreamLoginPresenter(validation: validation);
    email = faker.internet.email();
    password = faker.internet.password();
    mockValidation();
  });

  test('Should call Validation with correct email', () {
    sut.validateEmail(email);

    verify(validation.validate(field: 'email', value: email)).called(1);
  });

  test('Should emit email error if validation fails', () {
    mockValidation(value: 'error');

    sut.emailErrorStream
        .listen(expectAsync1((error) => expect(error, 'error')));
    sut.isFormValidStream
        .listen(expectAsync1((isFormValid) => expect(isFormValid, false)));

    sut.validateEmail(email);
    sut.validateEmail(email);
  });

  test('Should emit null if validation succeeds', () {
    sut.emailErrorStream.listen(expectAsync1((error) => expect(error, null)));
    sut.isFormValidStream
        .listen(expectAsync1((isFormValid) => expect(isFormValid, false)));

    sut.validateEmail(email);
    sut.validateEmail(email);
  });

  test('Should call Validation with correct password', () {
    sut.validatePassword(email);

    verify(validation.validate(field: 'password', value: email)).called(1);
  });
}
