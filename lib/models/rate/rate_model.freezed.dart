// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RateModel {
  String get currency => throw _privateConstructorUsedError;
  Decimal get rate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RateModelCopyWith<RateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateModelCopyWith<$Res> {
  factory $RateModelCopyWith(RateModel value, $Res Function(RateModel) then) =
      _$RateModelCopyWithImpl<$Res, RateModel>;
  @useResult
  $Res call({String currency, Decimal rate});
}

/// @nodoc
class _$RateModelCopyWithImpl<$Res, $Val extends RateModel>
    implements $RateModelCopyWith<$Res> {
  _$RateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? rate = null,
  }) {
    return _then(_value.copyWith(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as Decimal,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RateModelImplCopyWith<$Res>
    implements $RateModelCopyWith<$Res> {
  factory _$$RateModelImplCopyWith(
          _$RateModelImpl value, $Res Function(_$RateModelImpl) then) =
      __$$RateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String currency, Decimal rate});
}

/// @nodoc
class __$$RateModelImplCopyWithImpl<$Res>
    extends _$RateModelCopyWithImpl<$Res, _$RateModelImpl>
    implements _$$RateModelImplCopyWith<$Res> {
  __$$RateModelImplCopyWithImpl(
      _$RateModelImpl _value, $Res Function(_$RateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currency = null,
    Object? rate = null,
  }) {
    return _then(_$RateModelImpl(
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as Decimal,
    ));
  }
}

/// @nodoc

class _$RateModelImpl implements _RateModel {
  const _$RateModelImpl({required this.currency, required this.rate});

  @override
  final String currency;
  @override
  final Decimal rate;

  @override
  String toString() {
    return 'RateModel(currency: $currency, rate: $rate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateModelImpl &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currency, rate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RateModelImplCopyWith<_$RateModelImpl> get copyWith =>
      __$$RateModelImplCopyWithImpl<_$RateModelImpl>(this, _$identity);
}

abstract class _RateModel implements RateModel {
  const factory _RateModel(
      {required final String currency,
      required final Decimal rate}) = _$RateModelImpl;

  @override
  String get currency;
  @override
  Decimal get rate;
  @override
  @JsonKey(ignore: true)
  _$$RateModelImplCopyWith<_$RateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
