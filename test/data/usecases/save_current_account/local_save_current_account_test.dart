import 'package:clean_flutter_app/domain/entities/entities.dart';
import 'package:clean_flutter_app/domain/usecases/usecases.dart';
import 'package:faker/faker.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:meta/meta.dart';

class LocalSaveCurrentAccount implements SaveCurrentAccount {
  final SaveSecureCacheStorage saveSecureCacheStorage;

  LocalSaveCurrentAccount({this.saveSecureCacheStorage});

  Future<void> save(AccountEntity account) async {
    await saveSecureCacheStorage.saveSecure(key: 'token', value: account.token);
  }
}

abstract class SaveSecureCacheStorage {
  Future<void> saveSecure({@required String key, @required String value});
}

class SaveSecureCacheStorageSpy extends Mock implements SaveSecureCacheStorage {
}

void main() {
  test('Should call CacheStorage with correct values', () async {
    final cacheStorage = SaveSecureCacheStorageSpy();
    final sut = LocalSaveCurrentAccount(saveSecureCacheStorage: cacheStorage);
    final account = AccountEntity(faker.guid.guid());

    await sut.save(account);

    verify(cacheStorage.saveSecure(key: 'token', value: account.token));
  });
}
