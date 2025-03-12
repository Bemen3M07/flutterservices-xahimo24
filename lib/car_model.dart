class CarModel {
  final int id;
  final int year;
  final String make;
  final String model;
  final String type;

  CarModel({
    required this.id,
    required this.year,
    required this.make,
    required this.model,
    required this.type,
  });

  factory CarModel.fromMap(Map<String, dynamic> json) => CarModel(
    id: json["id"],
    year: json["year"],
    make: json["make"],
    model: json["model"],
    type: json["type"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "year": year,
    "make": make,
    "model": model,
    "type": type,
  };
}