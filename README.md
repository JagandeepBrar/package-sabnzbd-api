# SABnzbd API

[![Pubdev][shield-pubdev]][link-pubdev]
![License][shield-license]

Dart library package providing an abstraction for [SABnzbd][link-website]'s public API.

This package is intended to supply a 1:1 mapping of the [public API documentation][link-swagger] and does not make assumptions on orchestration to execute different workflows.

# Preparing SABnzbd

To connect to your instance of SABnzbd, you will need:

1. The host IPv4 address of the machine running SABnzbd
2. The API key of the SABnzbd instance (which can be found in the web GUI under Config → General)

Please note that in order to access SABnzbd from another machine on the network you must ensure that both the SABnzbd executable and the running port are allowed in any running firewalls on the host machine.

# Connecting to the API

All classes, models, and types are exported in the main package file:

```dart
import 'package:sabnzbd_api/sabnzbd_api.dart';
```

Now you can instantiate an instance of `SABnzbdConfig` that is used to instantiate an instance of `SABnzbdAPI`:

```dart
final config = SABnzbdConfig(
  host: '192.168.1.100:8080',
  apiKey: 'asdf123',
);
final api = SABnzbdAPI(config);
```

> You can optionally pass in a Dio `BaseOptions` instance to the configuration to customize the HTTP client. Note that the `baseUrl` property will be overwritten with the given `host` property in the configuration.

And you are ready to make API calls!

```dart
final resume = await api.resumeQueue(); // Resume the global queue
final history = await api.getHistory(); // Get items in the history
...
```

# Additional Notes

1. All available API methods can be viewed in the [generated Dart documentation][link-docs]
2. All models are immutable [freezed][link-freezed]-generated classes that can be modified using the `<model>.copyWith(...)` method
3. All models are JSON serializable using the `<model>.toJson()` method

[link-docs]: https://pub.dev/documentation/sabnzbd_api/latest/api/SABnzbdAPI-class.html
[link-freezed]: https://pub.dev/packages/freezed
[link-pubdev]: https://pub.dev/packages/sabnzbd_api
[link-swagger]: https://sabnzbd.org/wiki/configuration/3.7/api
[link-website]: https://sabnzbd.org
[shield-license]: https://img.shields.io/github/license/RoninComputer/package-sabnzbd-api?style=for-the-badge
[shield-pubdev]: https://img.shields.io/pub/v/sabnzbd_api.svg?style=for-the-badge
