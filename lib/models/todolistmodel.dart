// To parse this JSON data, do
//
//     final tdlModel = tdlModelFromJson(jsonString);

import 'dart:convert';

List<TdlModel> tdlModelFromJson(String str) => List<TdlModel>.from(json.decode(str).map((x) => TdlModel.fromJson(x)));

String tdlModelToJson(List<TdlModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TdlModel {
    int userId;
    int id;
    String title;
    bool completed;

    TdlModel({
        required this.userId,
        required this.id,
        required this.title,
        required this.completed,
    });

    TdlModel copyWith({
        int? userId,
        int? id,
        String? title,
        bool? completed,
    }) => 
        TdlModel(
            userId: userId ?? this.userId,
            id: id ?? this.id,
            title: title ?? this.title,
            completed: completed ?? this.completed,
        );

    factory TdlModel.fromJson(Map<String, dynamic> json) => TdlModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        completed: json["completed"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "completed": completed,
    };
}
