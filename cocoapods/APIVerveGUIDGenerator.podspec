Pod::Spec.new do |s|
  s.name             = 'APIVerveGUIDGenerator'
  s.version          = '1.2.3'
  s.summary          = 'GUID Generator is a GUID generator API that creates RFC 4122 version 4 GUIDs in standard, uppercase, hyphen-free, or brace-wrapped formats.'
  s.description      = <<-'DESC'
GUID Generator is a GUID generator API that creates RFC 4122 version 4 GUIDs in standard, uppercase, hyphen-free, or brace-wrapped formats. Pass a count and formatting style to receive a batch of unique IDs matching your structural requirements.

This iOS/macOS SDK provides a convenient way to access the GUID Generator from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/guidgenerator?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/guidgenerator-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveGUIDGenerator/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
