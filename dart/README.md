# GUID Generator API - Dart/Flutter Client

GUID Generator is a GUID generator API that creates RFC 4122 version 4 GUIDs in standard, uppercase, hyphen-free, or brace-wrapped formats. Pass a count and formatting style to receive a batch of unique IDs matching your structural requirements.

[![pub package](https://img.shields.io/pub/v/apiverve_guidgenerator.svg)](https://pub.dev/packages/apiverve_guidgenerator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [GUID Generator API](https://apiverve.com/marketplace/guidgenerator?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_guidgenerator: ^1.2.5
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
      "099FD1E4-60FD-4749-9B61-53A265F52579",
      "D68CA374-C822-40E4-9948-CE7A5D5FC76A",
      "F6DAD45F-A904-4007-89DF-8F5C76184910"
    ],
    "count": 3,
    "format": "uppercase",
    "version": 4,
    "variant": "RFC 4122"
  }
}
```

## API Reference

- **API Home:** [GUID Generator API](https://apiverve.com/marketplace/guidgenerator?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/guidgenerator](https://docs.apiverve.com/ref/guidgenerator?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
