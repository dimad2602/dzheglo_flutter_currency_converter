import 'dart:convert';

import 'package:decimal/decimal.dart';
import 'package:dio/dio.dart';
import 'package:dzheglo_flutter_currency_converter/data/dto/rate_dto/rate_dto.dart';
import 'package:dzheglo_flutter_currency_converter/data/repositories/currency_repo/i_currency.dart';
import 'package:dzheglo_flutter_currency_converter/data/response/currency_list_response/currency_list_response_mole.dart';
import 'package:dzheglo_flutter_currency_converter/data/response/rate_response/rate_response_model.dart';

class CurrencyRepo implements ICurrencyRepository {
  final Dio dio = Dio();

  final String apURL = 'https://currate.ru/api/';
  final String firstPairs = 'RUBUSD,USDRUB';
  final String getRates = 'rates';
  final String getCurrencyList = 'currency_list';
  final String key = 'b049651535ce79b0ec4edab354f62d6f';

  @override
  Future<RateResponseModel> fetchCurrencyRates({String? pairs}) async {
    try {
      final response = await dio.get(
        apURL,
        queryParameters: {
          'get': getRates,
          'pairs': pairs ?? firstPairs,
          'key': key,
        },
      );

      dynamic jsonResponse = jsonDecode(response.data);

      if (response.statusCode == 200) {
        final ratesJson = jsonResponse['data'] as Map<String, dynamic>;

        final List<RateDto> rateDtoList = ratesJson.entries.map((entry) {
          return RateDto(
            currency: entry.key,
            rate: Decimal.parse(entry.value),
          );
        }).toList();

        final responseModel = RateResponseModel(
          status: jsonResponse['status'],
          message: jsonResponse['message'],
          data: rateDtoList,
        );

        return responseModel;
      } else {
        throw Exception('Failed to fetch currency rates');
      }
    } catch (e) {
      print('Error occurred: $e');
      rethrow;
    }
  }

  @override
  Future<CurrencyListResponseModel> fetchCurrencyList() async {
    try {
      final response = await dio.get(
        apURL,
        queryParameters: {
          'get': getCurrencyList,
          'key': key,
        },
      );

      dynamic jsonResponse = jsonDecode(response.data);

      if (response.statusCode == 200) {
        // final ratesJson = jsonResponse['data'] as Map<String, dynamic>;

        // final List<RateDto> rateDtoList = ratesJson.entries.map((entry) {
        //   return RateDto(
        //     currency: entry.key,
        //     rate: Decimal.parse(entry.value),
        //   );
        // }).toList();

        final responseModel = CurrencyListResponseModel(
          status: jsonResponse['status'],
          message: jsonResponse['message'],
          data: jsonResponse['data'],
        );

        return responseModel;
      } else {
        throw Exception('Failed to fetch currency rates');
      }
    } catch (e) {
      print('Error occurred: $e');
      rethrow;
    }
  }
}
