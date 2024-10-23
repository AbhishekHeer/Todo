import 'dart:convert';

class Todomodel {
  final String title;
  final String description;

  Todomodel({
    required this.title,
    required this.description,
  });

  Todomodel copyWith({
    String? title,
    String? description,
  }) =>
      Todomodel(
        title: title ?? this.title,
        description: description ?? this.description,
      );

  factory Todomodel.fromRawJson(String str) =>
      Todomodel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Todomodel.fromJson(Map<String, dynamic> json) => Todomodel(
        title: json["title"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
      };
}
