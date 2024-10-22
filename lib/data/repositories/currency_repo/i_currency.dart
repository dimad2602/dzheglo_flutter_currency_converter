import 'package:dzheglo_flutter_currency_converter/data/response/response_model.dart';

abstract class ICurrencyRepository {
  Future<ResponseModel> fetchCurrency();
}
