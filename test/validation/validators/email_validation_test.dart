import 'package:clean_flutter_app/validation/validators/validators.dart';
import 'package:faker/faker.dart';
import 'package:test/test.dart';

void main() {
  EmailValidation sut;

  setUp(() {
    sut = EmailValidation('any_field');
  });

  test('Should return null if email is empty', () {
    expect(sut.validate(''), null);
  });

  test('Should return null if email is null', () {
    expect(sut.validate(''), null);
  });

  test('Should return null if email is valid', () {
    expect(sut.validate(faker.internet.email()), null);
  });

  test('Should return error if email is invalid', () {
    expect(sut.validate(faker.lorem.word()), 'Wrong field');
  });
}
