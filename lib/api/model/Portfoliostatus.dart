import 'package:sampleapp/api/model/Porfoliodata.dart';

import 'data.dart';

class Portfoliostatus {
  Portfoliostatus({
      this.code, 
      this.message, 
      this.data,});

  Portfoliostatus.fromJson(dynamic json) {
    code = json['code'];
    message = json['message'];
    data = json['data'] != null ? Porfoliodata.fromJson(json['data']) : null;
  }
  int? code;
  String? message;
  Porfoliodata? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['message'] = message;
    if (data != null) {
      map['data'] = data!.toJson();
    }
    return map;
  }

}