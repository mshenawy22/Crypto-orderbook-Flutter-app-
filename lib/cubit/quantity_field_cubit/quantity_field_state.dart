part of 'quantity_field_cubit.dart' ;

//ignore: must_be_immutable
class QuantityFieldState extends Equatable {

   final double value;

  QuantityFieldState(this.value);

  @override
  List<Object?> get props => [value];
}
