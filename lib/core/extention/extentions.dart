extension StringExtensions on String? {
  bool get isNullOrEmpty => this?.trim().isEmpty ?? true;
}