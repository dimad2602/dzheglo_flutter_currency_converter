import 'package:dzheglo_flutter_currency_converter/data/response/currency_list_response/currency_list_response_mole.dart';
import 'package:dzheglo_flutter_currency_converter/data/response/rate_response/rate_response_model.dart';

abstract class ICurrencyRepository {
  Future<RateResponseModel> fetchCurrencyRates({String? pairs});

  Future<CurrencyListResponseModel> fetchCurrencyList();
}
