import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_response.g.dart';

@JsonSerializable()
class KrakenFutureResponse extends Equatable {
  final double price;
  final String feed;
  final String productId;
  final double qty;
  final String side;
  final int timestamp;
  final int seq;

  const KrakenFutureResponse(this.price, this.feed, this.productId, this.side,
      this.qty, this.timestamp, this.seq);

  static Map<String, dynamic> emptyJson = {
    'price': 0.0,
    'feed': '',
    'product_id': '',
    'side': '',
    'qty': 0.0,
    'timestamp': DateTime.now().millisecondsSinceEpoch.toString(),
    'seq': 0,
  };

  factory KrakenFutureResponse.fromJson(Map<String, dynamic> json) =>
      _$KrakenFutureResponseFromJson(json);

  factory KrakenFutureResponse.fromJsonEmpty() =>
      _$KrakenFutureResponseFromJson(emptyJson);

  Map<String, dynamic> toJson() => _$KrakenFutureResponseToJson(this);

  @override
  List<Object?> get props => [
        price,
        feed,
        productId,
        qty,
        side,
        timestamp,
        seq,
      ];
}
