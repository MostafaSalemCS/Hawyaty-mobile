class UnityEntity {
  final int id;
  final String title;
  final int? sort;
  final String? fullyQualifiedName;
  final String? shortName;
  final bool isShow;
  final int unitType;
  final int unitNumber;
  final String subjectId;

  UnityEntity(
      {required this.id,
      required this.title,
      required this.sort,
      required this.fullyQualifiedName,
      required this.shortName,
      required this.isShow,
      required this.unitType,
      required this.unitNumber,
      required this.subjectId});

  factory UnityEntity.fromJson(Map<String, dynamic> json) => UnityEntity(
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

  factory UnityEntity.empty() {
    return UnityEntity(
        id: 0,
        title: "",
        sort: 0,
        fullyQualifiedName: "",
        shortName: "",
        isShow: false,
        unitType: 0,
        unitNumber: 0,
        subjectId: "");
  }
}

// ,[IsShow]
// ,[Type]
// ,[UnitNumber]
// ,[ScheduleDate]
// ,[SubjectId]
