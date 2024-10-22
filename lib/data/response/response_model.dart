import 'package:dzheglo_flutter_currency_converter/data/dto/rate_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_model.freezed.dart';
//part 'response_model.g.dart';

@freezed
class ResponseModel with _$ResponseModel {
  const factory ResponseModel({
    required int status,
    required String message,
    required List<RateDto> data,
  }) = _ResponseModel;
}
