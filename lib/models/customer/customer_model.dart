import 'package:meta/meta.dart';
import 'dart:convert';

List<CustomerArea> customerAreaFromJson(String str) => List<CustomerArea>.from(json.decode(str).map((x) => CustomerArea.fromJson(x)));

String customerAreaToJson(List<CustomerArea> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));


List<CustomerCategory> customerCategoryFromJson(String str) => List<CustomerCategory>.from(json.decode(str).map((x) => CustomerCategory.fromJson(x)));

String customerCategoryToJson(List<CustomerCategory> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));


class CustomerArea {
  String code;
  String name;

  CustomerArea({
    required this.code,
    required this.name,
  });

  CustomerArea copyWith({
    String? code,
    String? name,
  }) =>
      CustomerArea(
        code: code ?? this.code,
        name: name ?? this.name,
      );

  factory CustomerArea.fromJson(Map<String, dynamic> json) => CustomerArea(
    code: json["code"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "name": name,
  };
}


class CustomerCategory {
  String code;
  String name;

  CustomerCategory({
    required this.code,
    required this.name,
  });

  CustomerCategory copyWith({
    String? code,
    String? name,
  }) =>
      CustomerCategory(
        code: code ?? this.code,
        name: name ?? this.name,
      );

  factory CustomerCategory.fromJson(Map<String, dynamic> json) => CustomerCategory(
    code: json["code"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "name": name,
  };
}