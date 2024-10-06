
class Attribute {
  final bool? isChatDisabled;
  final bool? canLogout;
  final bool? enableScreenShots;

  Attribute({this.isChatDisabled, this.canLogout,this.enableScreenShots});

  factory Attribute.fromJson(Map<String, dynamic> json) => Attribute(
      isChatDisabled: json["IsChatDisabled"],
      canLogout: json["Logout"],

      enableScreenShots: json["enableScreenShots"]);

  Map<String, dynamic> toJson() => {"IsChatDisabled": isChatDisabled};

  factory Attribute.empty() {
    return Attribute(
      isChatDisabled: null,
      canLogout: null,
      enableScreenShots: false,
    );
  }
  Attribute copyWith({bool? enableScreenShots}) {
    return Attribute(

      isChatDisabled: isChatDisabled,
      canLogout: canLogout,
      enableScreenShots: enableScreenShots ?? this.enableScreenShots,
    );
  }
}
