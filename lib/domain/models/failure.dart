import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.database(String message, [Exception? exception]) = DatabaseFailure;
  const factory Failure.auth(String message, [Exception? exception]) = AuthFailure;
  const factory Failure.network(String message, [Exception? exception]) = NetworkFailure;
  const factory Failure.unknown(String message, [Exception? exception]) = UnknownFailure;
}