part of '_index.dart';

class History {
  double valX;
  String valOps;
  double valY;
  String valResult;
  History({
    this.valX = 0.0,
    this.valOps = '',
    this.valY = 0.0,
    this.valResult = '',
  });

  History copyWith({
    double? valX,
    String? valOps,
    double? valY,
    String? valResult,
  }) {
    return History(
      valX: valX ?? this.valX,
      valOps: valOps ?? this.valOps,
      valY: valY ?? this.valY,
      valResult: valResult ?? this.valResult,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'val_x': valX});
    result.addAll({'val_ops': valOps});
    result.addAll({'val_y': valY});
    result.addAll({'val_result': valResult});

    return result;
  }

  factory History.fromMap(Map<String, dynamic> map) {
    return History(
      valX: map['val_x']?.toDouble() ?? 0.0,
      valOps: map['val_ops'] ?? '',
      valY: map['val_y']?.toDouble() ?? 0.0,
      valResult: map['val_result'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory History.fromJson(String source) => History.fromMap(json.decode(source));

  @override
  String toString() {
    return 'History(valX: $valX, valOps: $valOps, valY: $valY, valResult: $valResult)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is History &&
        other.valX == valX &&
        other.valOps == valOps &&
        other.valY == valY &&
        other.valResult == valResult;
  }

  @override
  int get hashCode {
    return valX.hashCode ^ valOps.hashCode ^ valY.hashCode ^ valResult.hashCode;
  }
}
