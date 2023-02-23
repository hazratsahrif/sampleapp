class Porfoliodata {
  Porfoliodata({
      this.userName, 
      this.userProfileImg, 
      this.investedValue, 
      this.currentValue,});

  Porfoliodata.fromJson(dynamic json) {
    userName = json['user_name'];
    userProfileImg = json['user_profile_img'];
    investedValue = json['invested_value'];
    currentValue = json['current_value'];
  }
  String? userName;
  String? userProfileImg;
  String? investedValue;
  String? currentValue;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_name'] = userName;
    map['user_profile_img'] = userProfileImg;
    map['invested_value'] = investedValue;
    map['current_value'] = currentValue;
    return map;
  }

}