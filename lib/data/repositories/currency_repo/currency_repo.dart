import 'dart:convert';

import 'package:decimal/decimal.dart';
import 'package:dio/dio.dart';
import 'package:dzheglo_flutter_currency_converter/data/dto/rate_dto.dart';
import 'package:dzheglo_flutter_currency_converter/data/repositories/currency_repo/i_currency.dart';
import 'package:dzheglo_flutter_currency_converter/data/response/response_model.dart';

class CurrencyRepo implements ICurrencyRepository {
  final Dio dio = Dio();

  @override
  Future<ResponseModel> fetchCurrency() async {
    try {
      final response = await dio.get(
        'https://currate.ru/api/',
        queryParameters: {
          'get': 'rates',
          'pairs': 'USDRUB',
          'key': 'b049651535ce79b0ec4edab354f62d6f',
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

        final responseModel = ResponseModel(
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
}
