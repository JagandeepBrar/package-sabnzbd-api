import 'package:sabnzbd_api/sabnzbd_api.dart';

void main() async {
  // Set up the SABnzbd API
  final api = SABnzbdAPI(SABnzbdConfig(
    host: '192.168.1.100:8080',
    apiKey: 'asdf123',
  ));

  // Make API Calls
}
