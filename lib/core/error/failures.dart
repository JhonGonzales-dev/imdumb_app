class Failure {
  final String message;
  final int? code;
  final Map<String, dynamic>? details;

  Failure({required this.message, this.code, this.details});
}
