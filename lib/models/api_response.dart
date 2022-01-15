import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_response.g.dart';

@JsonSerializable()
class KrakenFutureResponse extends Equatable {
  final double price;
  final String feed;
  final String product_id;
  final double qty;
  final String side;
  final int    timestamp;
  final int     seq;


  KrakenFutureResponse(this.price , this.feed  , this.product_id , this.side , this.qty , this.timestamp , this.seq);


  factory KrakenFutureResponse.fromJson(Map<String, dynamic> json) => _$KrakenFutureResponseFromJson(json);

  Map<String, dynamic> toJson() => _$KrakenFutureResponseToJson(this);

  @override

  List<Object?> get props => [
    price,
  feed,
  product_id,
  qty,
  side,
  timestamp,
  seq,
  ];

}



