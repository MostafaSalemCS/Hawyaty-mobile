class UnitDto {
  final int id;
  final String title;
  final int? sort;
  final String? fullyQualifiedName;
  final String? shortName;
  final bool isShow;
  final int unitType;
  final int unitNumber;
  final String subjectId;

  UnitDto(
      {required this.id,
      required this.title,
      required this.sort,
      required this.fullyQualifiedName,
      required this.shortName,
      required this.isShow,
      required this.unitType,
      required this.unitNumber,
      required this.subjectId});

  factory UnitDto.fromJson(Map<String, dynamic> json) => UnitDto(
        id: json["id"],
        title: json["title"],
        sort: json["sort"],
        fullyQualifiedName: json["fullyQualifiedName"],
        shortName: json["shortName"],
        isShow: json["isShow"],
        unitType: json["unitType"],
        unitNumber: json["unitNumber"],
        subjectId: json["subjectId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "sort": sort,
        "fullyQualifiedName": fullyQualifiedName,
        "shortName": shortName,
        "isShow": isShow,
        "unitType": unitType,
        "unitNumber": unitNumber,
        "subjectId": subjectId,
      };
}
