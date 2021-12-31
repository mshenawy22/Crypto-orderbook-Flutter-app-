import 'package:bloc/bloc.dart';

part 'product_list_state.dart';

class ProductListCubit extends Cubit<ProductListState> {
  //on initialisation , go to the loading state (loaded = false)
  ProductListCubit() : super(ProductListState(false));


  void isLoading() => emit(ProductListState(false));

  void isLoaded() => emit(ProductListState(true));
}
