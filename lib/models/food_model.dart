class Food {
  Food({
    required this.name,
    required this.IG,
    required this.fiber,
    required this.carbohydrates,
  });

  Food.fromJson(Map<String, Object?> json)
      : this(
          name: json["name"]! as String,
          IG: json["IG"]! as int,
          carbohydrates: json["carbohydrates"]! as double,
          fiber: json["fiber"]! as double,
        );

  String? name;
  int? IG;
  double? carbohydrates;
  double? fiber;

  Map<String, Object?> toJson() {
    return {
      "name": name,
      "IG": IG,
      "carbohydrates": carbohydrates,
      "fiber": fiber,
    };
  }
}
