import 'package:bloc/bloc.dart';

part 'quantity_field_state.dart';

class QuantityFieldCubit extends Cubit<QuantityFieldState> {
  //on initialisation , go to the loading state (loaded = false)
  QuantityFieldCubit() : super(QuantityFieldState(0));



  void reset() => emit(QuantityFieldState(0));

  void updateValue(int value) => emit(QuantityFieldState(value));
}
