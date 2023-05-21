part of '_index.dart';

class Histories {
  List<History> values;
  Histories({
    this.values = const [],
  });

  Histories copyWith({
    List<History>? values,
  }) {
    return Histories(
      values: values ?? this.values,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'values': values.map((x) => x.toMap()).toList()});

    return result;
  }

  factory Histories.fromMap(Map<String, dynamic> map) {
    return Histories(
      values: List<History>.from(map['values']?.map((x) => History.fromMap(x)) ?? const []),
    );
  }

  String toJson() => json.encode(toMap());

  factory Histories.fromJson(String source) => Histories.fromMap(json.decode(source));

  @override
  String toString() => 'Histories(values: $values)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Histories && listEquals(other.values, values);
  }

  @override
  int get hashCode => values.hashCode;
}
