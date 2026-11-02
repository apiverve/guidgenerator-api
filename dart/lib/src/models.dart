/// Response models for the GUID Generator API.

/// API Response wrapper.
class GuidgeneratorResponse {
  final String status;
  final dynamic error;
  final GuidgeneratorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  GuidgeneratorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory GuidgeneratorResponse.fromJson(Map<String, dynamic> json) => GuidgeneratorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? GuidgeneratorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the GUID Generator API.

class GuidgeneratorData {
  List<String>? guids;
  num? count;
  String? format;
  num? version;
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
