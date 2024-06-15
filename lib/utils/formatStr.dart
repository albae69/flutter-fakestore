extension StringExtension on String {
  String ellipsText(int l) {
    return this.length > l ? '${this.substring(0, l)}...' : this;
  }
}
