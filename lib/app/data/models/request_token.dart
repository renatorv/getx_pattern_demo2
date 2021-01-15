import 'package:meta/meta.dart';
// import 'dart:convert';
//
// RequestToken requestTokenFromJson(String str) => RequestToken.fromJson(json.decode(str));
//
// String requestTokenToJson(RequestToken data) => json.encode(data.toJson());

class RequestToken {
  RequestToken({
    @required this.success,
    @required this.expiresAt,
    @required this.requestToken,
  });

  final String success;
  final String expiresAt;
  final String requestToken;

  factory RequestToken.fromJson(Map<String, dynamic> json) => RequestToken(
    success: json["success"],
    expiresAt: json["expires_at"],
    requestToken: json["request_token"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "expires_at": expiresAt,
    "request_token": requestToken,
  };
}
