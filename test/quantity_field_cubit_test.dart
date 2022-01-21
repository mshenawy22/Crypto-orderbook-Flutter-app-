import 'package:cryptowatch_orderbook/cubit/quantity_field_cubit/quantity_field_cubit.dart';
import 'package:test/test.dart';




void main() {

  group('UpdateField', () {
    late QuantityFieldCubit quantityFieldBloc;

    setUp(() {
      quantityFieldBloc = QuantityFieldCubit();
    });

    test('initial state is 0', () {
      expect(quantityFieldBloc.state.value, 0);
    });

    test('random negative value', () {
      quantityFieldBloc.updateValue(-8393);
      expect(quantityFieldBloc.state.value, -8393);
    });

    test('random positive value value', () {
      quantityFieldBloc.updateValue(8392027);
      expect(quantityFieldBloc.state.value, 8392027);
    });

    test('really long positive value value', () {
      quantityFieldBloc.updateValue(8392384938490321);
      expect(quantityFieldBloc.state.value, 8392384938490321);
    });



  });



}