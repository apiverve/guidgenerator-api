/// Response models for the GUID Generator API.

/// API Response wrapper.
class GuidgeneratorResponse {
  final String status;
  final dynamic error;
  final GuidgeneratorData? data;

  GuidgeneratorResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory GuidgeneratorResponse.fromJson(Map<String, dynamic> json) => GuidgeneratorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? GuidgeneratorData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the GUID Generator API.

class GuidgeneratorData {
  List<String>? guids;
  int? count;
  String? format;
  int? version;
  String? variant;

  GuidgeneratorData({
    this.guids,
    this.count,
    this.format,
    this.version,
    this.variant,
  });

  factory GuidgeneratorData.fromJson(Map<String, dynamic> json) => GuidgeneratorData(
      guids: (json['guids'] as List?)?.cast<String>(),
      count: json['count'],
      format: json['format'],
      version: json['version'],
      variant: json['variant'],
    );
}

class GuidgeneratorRequest {
  int? count;
  String? format;

  GuidgeneratorRequest({
    this.count,
    this.format,
  });

  Map<String, dynamic> toJson() => {
      if (count != null) 'count': count,
      if (format != null) 'format': format,
    };
}
