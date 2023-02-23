import 'Data.dart';

class Status {
  Status({
      this.code, 
      this.message, 
      this.data,});

  Status.fromJson(dynamic json) {
    code = json['code'];
    message = json['message'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data!.add(DespositData.fromJson(v));
      });
    }
  }
  int? code;
  String? message;
  List<DespositData>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['message'] = message;
    if (data != null) {
      map['data'] = data!.map((v) => v.toJson()).toList();
    }
    return map;
  }

}