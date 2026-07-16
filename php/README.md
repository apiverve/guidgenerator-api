# GUID Generator API - PHP Package

GUID Generator is a tool for generating Globally Unique Identifiers (GUIDs). It creates RFC 4122 version 4 UUIDs with multiple formatting options including uppercase, no hyphens, and braces.

## Installation

Install via Composer:

```bash
composer require apiverve/guidgenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Guidgenerator\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'count' => 1,
    'format' => 'default'
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Guidgenerator\Client;
use APIVerve\Guidgenerator\Exceptions\APIException;
use APIVerve\Guidgenerator\Exceptions\ValidationException;

try {
    $response = $client->execute(['count' => 1, 'format' => 'default']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/guidgenerator?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/guidgenerator?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/guidgenerator?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
