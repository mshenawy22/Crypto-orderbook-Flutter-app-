// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KrakenFutureResponse _$KrakenFutureResponseFromJson(
        Map<String, dynamic> json) =>
    KrakenFutureResponse(
      json['price']?? 0.0 ,
      json['feed'] ??'' ,
      json['product_id']??'',
      json['side']??'',
      json['qty'] ?? 0.0 ,
      json['timestamp']?? 0 ,
      json['seq']?? 0 ,
    );

Map<String, dynamic> _$KrakenFutureResponseToJson(
        KrakenFutureResponse instance) =>
    <String, dynamic>{
      'price': instance.price,
      'feed': instance.feed,
      'product_id': instance.productId,
      'qty': instance.qty,
      'side': instance.side,
      'timestamp': instance.timestamp,
      'seq': instance.seq,
    };
