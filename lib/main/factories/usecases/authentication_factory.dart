import '../../../data/usecases/authencation/remote_authentication.dart';
import '../../../domain/usecases/usecases.dart';
import '../factories.dart';

Authentication makeRemoteAuthentication() {
  return RemoteAuthentication(
    httpClient: makeHttpAdapter(),
    url: makeApiUrl('login'),
  );
}
