import 'package:http/http.dart';

import '../../../../infra/http/http_adapter.dart';
import '../../../data/http/http_client.dart';

HttpClient makeHttpAdapter() {
  final client = Client();
  return HttpAdapter(client);
}
