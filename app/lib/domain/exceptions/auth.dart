import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.freezed.dart';

@freezed
class AuthException with _$AuthException implements Exception {
  factory AuthException.notLoggedIn() = _NotLoggedIn;
}