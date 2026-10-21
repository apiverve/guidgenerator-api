# GUID Generator API - Ruby Gem

GUID Generator is a GUID generator API that creates RFC 4122 version 4 GUIDs in standard, uppercase, hyphen-free, or brace-wrapped formats. Pass a count and formatting style to receive a batch of unique IDs matching your structural requirements.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_guidgenerator'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_guidgenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_guidgenerator'

# Initialize the client
client = APIVerve::Guidgenerator::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  count: 1,
  format: "default"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ count: 1, format: "default" })
  puts response["data"]
rescue APIVerve::Guidgenerator::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Guidgenerator::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Guidgenerator::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/guidgenerator?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/guidgenerator?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/guidgenerator?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
