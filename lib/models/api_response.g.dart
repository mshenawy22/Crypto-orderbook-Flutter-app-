// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KrakenFutureResponse _$KrakenFutureResponseFromJson(
        Map<String, dynamic> json) =>
    KrakenFutureResponse(
      (json['price'] as num).toDouble(),
      json['feed'] as String,
      json['product_id'] as String,
      json['side'] as String,
      (json['qty'] as num).toDouble(),
      json['timestamp'] as int,
      json['seq'] as int,
    );

Map<String, dynamic> _$KrakenFutureResponseToJson(
        KrakenFutureResponse instance) =>
    <String, dynamic>{
      'price': instance.price,
      'feed': instance.feed,
      'product_id': instance.product_id,
      'qty': instance.qty,
      'side': instance.side,
      'timestamp': instance.timestamp,
      'seq': instance.seq,
    };
