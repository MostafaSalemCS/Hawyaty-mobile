class TermEntity {
  final int id;
  final String name;

  TermEntity({required this.id, required this.name});

  factory TermEntity.empty() {
    return TermEntity(id: 0, name: "");
  }
}