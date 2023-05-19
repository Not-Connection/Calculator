part of '_index.dart';

class History {
  int id;
  double valX;
  String valOps;
  double valY;
  String valScreen;
  String valResult;
  History({
    this.id = 0,
    this.valX = 0.0,
    this.valOps = '',
    this.valY = 0.0,
    this.valScreen = '',
    this.valResult = '',
  });

  History copyWith({
    int? id,
    double? valX,
    String? valOps,
    double? valY,
    String? valScreen,
    String? valResult,
  }) {
    return History(
      id: id ?? this.id,
      valX: valX ?? this.valX,
      valOps: valOps ?? this.valOps,
      valY: valY ?? this.valY,
      valScreen: valScreen ?? this.valScreen,
      valResult: valResult ?? this.valResult,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'val_x': valX});
    result.addAll({'val_ops': valOps});
    result.addAll({'val_y': valY});
    result.addAll({'val_screen': valScreen});
    result.addAll({'val_result': valResult});

    return result;
  }

  factory History.fromMap(Map<String, dynamic> map) {
    return History(
      id: map['id']?.toInt() ?? 0,
      valX: map['val_x']?.toDouble() ?? 0.0,
      valOps: map['val_ops'] ?? '',
      valY: map['val_y']?.toDouble() ?? 0.0,
      valScreen: map['val_screen'] ?? '',
      valResult: map['val_result'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory History.fromJson(String source) => History.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Value(id: $id, valX: $valX, valOps: $valOps, valY: $valY, valScreen: $valScreen, valResult: $valResult)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is History &&
        other.id == id &&
        other.valX == valX &&
        other.valOps == valOps &&
        other.valY == valY &&
        other.valScreen == valScreen &&
        other.valResult == valResult;
  }

  @override
  int get hashCode {
    return id.hashCode ^ valX.hashCode ^ valOps.hashCode ^ valY.hashCode ^ valScreen.hashCode ^ valResult.hashCode;
  }
}
