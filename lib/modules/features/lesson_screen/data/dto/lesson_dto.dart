class LessonDto {
  final int id;
  final String title;
  final int? sort;
  final String? name;
  final String? shortName;
  final bool isShow;
  final int points;
  final int unitId;

  LessonDto(
      {required this.id,
      required this.title,
      required this.sort,
      required this.name,
      required this.shortName,
      required this.isShow,
      required this.points,
      required this.unitId});

  factory LessonDto.fromJson(Map<String, dynamic> json) => LessonDto(
        id: json["id"],
        title: json["title"],
        sort: json["sort"],
        name: json["name"],
        shortName: json["shortName"],
        isShow: json["isShow"],
        points: json["points"],
        unitId: json["unitId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "sort": sort,
        "name": name,
        "shortName": shortName,
        "isShow": isShow,
        "points": points,
        "unitId": unitId,
      };
}
