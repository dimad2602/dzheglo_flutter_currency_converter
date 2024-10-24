
import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_list_response_mole.freezed.dart';

@freezed
class CurrencyListResponseModel with _$CurrencyListResponseModel {
  const factory CurrencyListResponseModel({
    required String status,
    required String message,
    required List<dynamic> data,
  }) = _CurrencyListResponseModel;
}
