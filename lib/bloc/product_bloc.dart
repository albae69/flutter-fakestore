import 'package:fakestore/config/config.dart';
import 'package:http/http.dart' as http;
import 'package:fakestore/models/product.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial()) {
    on<GetProductEvent>((event, emit) async {
      emit(ProductLoading());

      try {
        final response =
            await http.get(Uri.parse('${Config.baseUrl}/products'));
        emit(ProductSuccess(products: productFromJson(response.body)));
      } catch (e) {
        print('error while get product $e');
        emit(ProductError());
      }
    });
  }
}
