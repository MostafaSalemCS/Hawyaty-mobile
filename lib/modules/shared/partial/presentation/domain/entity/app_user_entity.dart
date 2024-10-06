
import 'package:hawyaty/modules/shared/partial/presentation/domain/entity/attribute_entity.dart';

class AppUserEntity {
  final String appUserId;
  final String? fullName;
  final String id;
  final String? gradeName;
  final int? gradeId;
  final int? avatarId;
  final String? avatarImage;
  final String? notificationToken;
  final bool isPremium;
  final int roleId;
  final String? mobileNumber;
  final int? schoolId;
  final String? schoolName;
  final String? email;
  final String? roleName;
  final String? platform;
  final bool? isDeactivated;
  final String? grade;
  final String? role;
  final String? gender;
  final int? genderId;
  final String? country;
  final DateTime? dateOfBirth;
  final String? governorate;
  final String? avatarUrl;
  final String? accessToken;
  final String? refreshToken;
  final bool isEmailVerified;
  final bool isMobileVerified;
  final String? educationType;
  final String? roleIn;
  final String? language;
  final int? educationTypeId;
  final Attribute? attributes;

  AppUserEntity({
    required this.appUserId,
    required this.fullName,
    required this.id,
    required this.gradeName,
    required this.gradeId,
    required this.avatarId,
    required this.avatarImage,
    required this.notificationToken,
    required this.isPremium,
    required this.roleId,
    this.mobileNumber,
    this.schoolId,
    this.schoolName,
    required this.email,
    required this.roleName,
    required this.platform,
    this.isDeactivated,
    required this.grade,
    required this.role,
    required this.gender,
    required this.genderId,
    required this.country,
    this.dateOfBirth,
    required this.governorate,
    required this.avatarUrl,
    required this.accessToken,
    required this.refreshToken,
    required this.isEmailVerified,
    required this.isMobileVerified,
    required this.educationType,
    this.roleIn,
    required this.language,
    required this.educationTypeId,
    required this.attributes,
  });

  factory AppUserEntity.fromJson(Map<String, dynamic> json) => AppUserEntity(
    appUserId: json["id"] ?? (json["appUserId"] ?? ""),
    fullName: json['fullName'],
    id: json['id'],
    gradeName: json['gradeName'],
    gradeId: json['gradeId'],
    avatarId: json['avatarId'],
    avatarImage: json['avatarImage'],
    notificationToken: json['notificationToken'],
    isPremium: json['isPremium'],
    roleId: json['roleId'],
    mobileNumber: json['mobileNumber'],
    schoolId: json['schoolId'],
    schoolName: json['schoolName'],
    email: json['email'],
    roleName: json['roleName'],
    platform: json['platform'],
    isDeactivated: json['isDeactivated'],
    grade: json['grade'],
    role: json['role'],
    gender: json['gender'],
    genderId: json['genderId'],
    country: json['country'],
    dateOfBirth:
    json['dateOfBirth'] == null ? null : DateTime.parse(json['dateOfBirth'] as String),
    governorate: json['governorate'],
    avatarUrl: json['avatarUrl'],
    accessToken: json['accessToken'],
    refreshToken: json['refreshToken'],
    isEmailVerified: json['isEmailVerified'],
    isMobileVerified: json['isMobileVerified'],
    educationType: json['educationType'],
    roleIn: json['roleIn'],
    language: json['language'],
    educationTypeId: json['educationTypeId'],
    attributes: json['attributes'] == null
        ? null
        : Attribute.fromJson(json['attributes'] as Map<String, dynamic>),
    // attributes: json['attributes'] == null
    //     ? null
    //     : Attributes.fromJson(json['attributes'] as Map<String, dynamic>),
  );

  AppUserEntity copyWith({
    String? appUserId,
    String? fullName,
    String? id,
    String? childId,
    String? gradeName,
    int? gradeId,
    int? avatarId,
    String? avatarImage,
    String? notificationToken,
    bool? isPremium,
    int? roleId,
    String? parentId,
    String? parentName,
    int? governorateId,
    String? mobileNumber,
    bool? isExternalUser,
    String? externalUserId,
    int? schoolId,
    String? schoolName,
    String? email,
    String? roleName,
    String? birthOfDate,
    int? partnerId,
    String? partnerName,
    String? schoolExternalId,
    String? parentEmail,
    String? parentMobile,
    int? parentRelationId,
    String? externalParentId,
    String? userId,
    String? parentAvatarUrl,
    String? platform,
    bool? isDeactivated,
    String? grade,
    String? role,
    String? gender,
    int? genderId,
    String? country,
    DateTime? dateOfBirth,
    String? referralCode,
    bool? isExternal,
    String? governorate,
    String? avatarUrl,
    String? accessToken,
    String? refreshToken,
    bool? isEmailVerified,
    bool? isMobileVerified,
    String? socialLogin,
    bool? hasCustomAvatar,
    String? educationType,
    String? roleIn,
    String? language,
    int? educationTypeId,
    Attribute? attributes,
  }) {
    return AppUserEntity(
      appUserId: appUserId ?? this.appUserId,
      fullName: fullName ?? this.fullName,
      id: id ?? this.id,
      gradeName: gradeName ?? this.gradeName,
      gradeId: gradeId ?? this.gradeId,
      avatarId: avatarId ?? this.avatarId,
      avatarImage: avatarImage ?? this.avatarImage,
      notificationToken: notificationToken ?? this.notificationToken,
      isPremium: isPremium ?? this.isPremium,
      roleId: roleId ?? this.roleId,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      schoolId: schoolId ?? this.schoolId,
      schoolName: schoolName ?? this.schoolName,
      email: email ?? this.email,
      roleName: roleName ?? this.roleName,
      platform: platform ?? this.platform,
      isDeactivated: isDeactivated ?? this.isDeactivated,
      grade: grade ?? this.grade,
      role: role ?? this.role,
      gender: gender ?? this.gender,
      genderId: genderId ?? this.genderId,
      country: country ?? this.country,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      governorate: governorate ?? this.governorate,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
      isEmailVerified: isEmailVerified ?? this.isEmailVerified,
      isMobileVerified: isMobileVerified ?? this.isMobileVerified,
      educationType: educationType ?? this.educationType,
      roleIn: roleIn ?? this.roleIn,
      language: language ?? this.language,
      educationTypeId: educationTypeId ?? this.educationTypeId,
      attributes: attributes ?? this.attributes,
    );
  }

  factory AppUserEntity.empty() => AppUserEntity(
    appUserId: "",
    fullName: "",
    id: "",
    gradeName: "",
    gradeId: 0,
    avatarId: 0,
    avatarImage: "",
    notificationToken: "",
    isPremium: false,
    roleId: 0,

    mobileNumber: "",

    schoolId: 0,
    schoolName: "",
    email: "",
    roleName: "",

    platform: "",
    isDeactivated: false,
    grade: "",
    role: "",
    gender: "",
    genderId: 0,
    country: "",
    dateOfBirth: null,

    governorate: "",
    avatarUrl: "",
    accessToken: "",
    refreshToken: "",
    isEmailVerified: false,
    isMobileVerified: false,

    educationType: "",
    roleIn: "",
    language: "",
    educationTypeId: 0,
    attributes: null,
  );

  Map<String, dynamic> toJson() => {
    "fullName": fullName,
    "id": id,
    "appUserId": id,
    "gradeName": gradeName,
    "gradeId": gradeId,
    "avatarId": avatarId,
    "avatarImage": avatarImage,
    "notificationToken": notificationToken,
    "isPremium": isPremium,
    "roleId": roleId,
    "mobileNumber": mobileNumber,
    "schoolId": schoolId,
    "schoolName": schoolName,
    "email": email,
    "roleName": roleName,
    "platform": platform,
    "isDeactivated": isDeactivated,
    "grade": grade,
    "role": role,
    "gender": gender,
    "genderId": genderId,
    "country": country,
    "dateOfBirth": dateOfBirth?.toIso8601String(),
    "governorate": governorate,
    "avatarUrl": avatarUrl,
    "accessToken": accessToken,
    "refreshToken": refreshToken,
    "isEmailVerified": isEmailVerified,
    "isMobileVerified": isMobileVerified,
    "educationType": educationType,
    "roleIn": roleIn,
    "language": language,
    "educationTypeId": educationTypeId,
    "attributes": attributes?.toJson(),
  };



  bool canLogOut() {
    return (attributes == null || attributes?.canLogout == null)
        ? true
        : attributes?.canLogout == false
        ? false
        : true;
  }

  bool isAccountVerifiedByEmail() {
    return isEmailVerified;
  }

  bool isAccountVerifiedByMobile() {
    return isMobileVerified;
  }

  bool isEmpty() {
    return id.isEmpty ? true : false;
  }

  bool gradeVisibility() {
    return gradeId == null ? false : true;
  }

  bool isSubscribed() {
    return isPremium;
  }

}