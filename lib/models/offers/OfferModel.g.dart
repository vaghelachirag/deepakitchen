// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'OfferModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OfferModel _$OfferModelFromJson(Map<String, dynamic> json) => _OfferModel(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  description: json['description'] as String,
  image: json['image'] as String,
  price: json['price'] as String,
  discount: json['discount'] as String,
  discountPrice: json['discountPrice'] as String,
);

Map<String, dynamic> _$OfferModelToJson(_OfferModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'price': instance.price,
      'discount': instance.discount,
      'discountPrice': instance.discountPrice,
    };
