extension NumberFormattingExtension on num {
  String toBudgetFormat() {
    if (this >= 1000000000) {
      return '${(this / 1000000000).toStringAsFixed(1)}B';
    }

    if (this >= 1000000) {
      return '${(this / 1000000).toStringAsFixed(1)}M';
    }

    if (this >= 1000) {
      return '${(this / 1000).toStringAsFixed(1)}K';
    }

    return toString();
  }
}
