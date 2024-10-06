class ConfigurationSettingEntity {
  final int? id;
  final String? name;
  final String? value;
  final bool? isEnabled;
  ConfigurationSettingEntity({this.id, this.name, this.value, this.isEnabled});

  ConfigurationSettingEntity.fromJson(Map<String, dynamic> data)
      : id = data['id'],
        name = data['name'],
        value = data['value'],
        isEnabled = data['isEnabled'];
}