class AppFailure {
  final String message;
  const AppFailure([this.message = 'Some error occured']);

  @override
  String toString() => 'AppFailure(message: $message)';
}