import 'package:get_ip/get_ip.dart';

class IPService {
  Future<String> getLocalIP() async {
    return await GetIp.ipAddress;
  }
}

class IPServiceApiException implements Exception {
  final int statusCode;
  final String message;

  const IPServiceApiException(this.statusCode, this.message);
}
