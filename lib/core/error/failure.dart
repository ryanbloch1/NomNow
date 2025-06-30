class Failure {
  final String message;
  final Exception? exception;
  final FailureType type;

  const Failure._({
    required this.message,
    this.exception,
    required this.type,
  });

  // Factory constructors
  factory Failure.database(String message, [Exception? exception]) {
    return Failure._(
      message: message,
      exception: exception,
      type: FailureType.database,
    );
  }

  factory Failure.auth(String message, [Exception? exception]) {
    return Failure._(
      message: message,
      exception: exception,
      type: FailureType.auth,
    );
  }

  factory Failure.network(String message, [Exception? exception]) {
    return Failure._(
      message: message,
      exception: exception,
      type: FailureType.network,
    );
  }

  factory Failure.validation(String message, [Exception? exception]) {
    return Failure._(
      message: message,
      exception: exception,
      type: FailureType.validation,
    );
  }

  factory Failure.unknown(String message, [Exception? exception]) {
    return Failure._(
      message: message,
      exception: exception,
      type: FailureType.unknown,
    );
  }

  // Helper methods
  bool get isDatabase => type == FailureType.database;
  bool get isAuth => type == FailureType.auth;
  bool get isNetwork => type == FailureType.network;
  bool get isValidation => type == FailureType.validation;
  bool get isUnknown => type == FailureType.unknown;
}

enum FailureType {
  database,
  auth,
  network,
  validation,
  unknown,
}
