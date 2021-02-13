import 'package:faker/faker.dart';
import 'package:http/http.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'package:clean_flutter_app/infra/http/http.dart';

class ClientSpy extends Mock implements Client {}

void main() {
  HttpAdapter sut;
  ClientSpy client;
  String url;

  setUp(() {
    client = ClientSpy();
    sut = HttpAdapter(client);
    url = faker.internet.httpUrl();
  });
  group('post', () {
    test('Should call post with correct values', () async {
      // arrange

      // act
      await sut.request(
        url: url,
        method: 'post',
        body: {'any_key': 'any_value'},
      );

      // assert
      verify(
        client.post(
          url,
          headers: {
            'content-type': 'application/json',
            'accept': 'application/json',
          },
          body: '{"any_key":"any_value"}',
        ),
      );
    });

    test('Should call post without body', () async {
      // arrange

      // act
      await sut.request(
        url: url,
        method: 'post',
      );

      // assert
      verify(
        client.post(
          url,
          headers: anyNamed('headers'),
        ),
      );
    });
  });
}
