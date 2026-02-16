# GUID Generator API - Dart/Flutter Client

GUID Generator is a tool for generating Globally Unique Identifiers (GUIDs). It creates RFC 4122 version 4 UUIDs with multiple formatting options including uppercase, no hyphens, and braces.

[![pub package](https://img.shields.io/pub/v/apiverve_guidgenerator.svg)](https://pub.dev/packages/apiverve_guidgenerator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [GUID Generator API](https://apiverve.com/marketplace/guidgenerator?utm_source=dart&utm_medium=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_guidgenerator: ^1.1.14
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_guidgenerator/apiverve_guidgenerator.dart';

void main() async {
  final client = GuidgeneratorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'count': 1,
      'format': 'default'
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "guids": [
      "FC79FCBB-39EA-4489-8203-B309471CE520",
      "807C7704-6BF4-4156-9428-58F1CDC1EDA8",
      "2A91D0B2-A7C0-47D3-9243-7D72C913C845"
    ],
    "count": 3,
    "format": "uppercase",
    "version": 4,
    "variant": "RFC 4122"
  }
}
```

## API Reference

- **API Home:** [GUID Generator API](https://apiverve.com/marketplace/guidgenerator?utm_source=dart&utm_medium=readme)
- **Documentation:** [docs.apiverve.com/ref/guidgenerator](https://docs.apiverve.com/ref/guidgenerator?utm_source=dart&utm_medium=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=readme)
