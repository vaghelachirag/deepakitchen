class OfferModel {
  OfferModel({
      int? statusCode, 
      String? message, 
      List<OfferList>? data,}){
    _statusCode = statusCode;
    _message = message;
    _data = data;
}

  OfferModel.fromJson(dynamic json) {
    _statusCode = json['StatusCode'];
    _message = json['Message'];
    if (json['Data'] != null) {
      _data = [];
      json['Data'].forEach((v) {
        _data?.add(OfferList.fromJson(v));
      });
    }
  }
  int? _statusCode;
  String? _message;
  List<OfferList>? _data;

  int? get statusCode => _statusCode;
  String? get message => _message;
  List<OfferList>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['StatusCode'] = _statusCode;
    map['Message'] = _message;
    if (_data != null) {
      map['Data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class OfferList {
  OfferList({
      int? id, 
      String? imagePath,}){
    _id = id;
    _imagePath = imagePath;
}

  OfferList.fromJson(dynamic json) {
    _id = json['Id'];
    _imagePath = json['ImagePath'];
  }
  int? _id;
  String? _imagePath;

  int? get id => _id;
  String? get imagePath => _imagePath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Id'] = _id;
    map['ImagePath'] = _imagePath;
    return map;
  }

}