class PointModel<T> {
  double? width;

  // Widget? child;
  T? data;
  bool? isCurrent;

  PointModel({required this.width, required this.data, this.isCurrent = false});

// PointModel.fromJson(Map<String, dynamic> json) {
//   width = json['Width'];
//   // child = json['Child'];
// }
//
// Map<String, dynamic> toJson() {
//   final Map<String, dynamic> data = new Map<String, dynamic>();
//   data['Width'] = this.width;
//   // data['Child'] = this.child;
//   return data;
// }
}
