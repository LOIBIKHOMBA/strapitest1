import 'dart:convert';

PostDataModel postDataModelFromJson(String str) =>
    PostDataModel.fromJson(json.decode(str));

String postDataModelToJson(PostDataModel data) => json.encode(data.toJson());

class PostDataModel {
  PostDataModel({
    required this.data,
  });

  final Data data;

  factory PostDataModel.fromJson(Map<String, dynamic> json) => PostDataModel(
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class Data {
  Data({
    required this.name,
    required this.email,
  });

  final String name;
  final String email;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        name: json["name"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
      };
}
