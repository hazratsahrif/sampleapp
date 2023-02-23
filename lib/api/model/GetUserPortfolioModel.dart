import 'package:sampleapp/api/model/Portfoliostatus.dart';

import 'status.dart';

class GetUserPortfolioModel {
  GetUserPortfolioModel({
      this.status,});

  GetUserPortfolioModel.fromJson(dynamic json) {
    status = json['status'] != null ? Portfoliostatus.fromJson(json['status']) : null;
  }
  Portfoliostatus? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (status != null) {
      map['status'] = status!.toJson();
    }
    return map;
  }

}