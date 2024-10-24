import 'package:dzheglo_flutter_currency_converter/data/dto/rate_dto/rate_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rate_response_model.freezed.dart';

@freezed
class RateResponseModel with _$RateResponseModel {
  const factory RateResponseModel({
    required int status,
    required String message,
    required List<RateDto> data,
  }) = _RateResponseModel;
}
