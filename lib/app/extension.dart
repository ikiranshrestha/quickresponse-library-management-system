//entension on String
import 'package:lms/data/mapper/mapper.dart';

extension NonNullString on String? {
  String orEmpty() {
    if (this == null) {
      return empty;
    } else {
      return this!;
    }
  }
}

//entension on integer
extension NonNullInteger on int? {
  int orZero() {
    if (this == null) {
      return zero;
    } else {
      return this!;
    }
  }
}

//entension on integer
extension NonNullDouble on double? {
  double orZero() {
    if (this == null) {
      return doubleZero;
    } else {
      return this!;
    }
  }
}
