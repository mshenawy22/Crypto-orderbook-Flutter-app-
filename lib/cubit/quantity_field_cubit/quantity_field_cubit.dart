import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'quantity_field_state.dart';

class QuantityFieldCubit extends Cubit<QuantityFieldState> {
  QuantityFieldCubit() : super(QuantityFieldState(0));

  void reset() => emit(QuantityFieldState(0));

  void updateValue(double value) => emit(QuantityFieldState(value));
}
