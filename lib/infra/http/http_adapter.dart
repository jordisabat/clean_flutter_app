import 'dart:convert';

import 'package:http/http.dart';
import 'package:meta/meta.dart';

class HttpAdapter {
  final Client client;
  HttpAdapter(this.client);

  Future<void> request({
    @required String url,
    @required String method,
    Map body,
  }) async {
    final headers = {
      'content-type': 'application/json',
      'accept': 'application/json',
    };
    final jsonBody = body != null ? jsonEncode(body) : null;
    await client.post(
      url,
      headers: headers,
      body: jsonBody,
    );
  }
}
