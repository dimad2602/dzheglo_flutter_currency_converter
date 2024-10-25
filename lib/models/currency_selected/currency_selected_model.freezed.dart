// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_selected_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CurrencySelectedModel {
  String get currencyCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrencySelectedModelCopyWith<CurrencySelectedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencySelectedModelCopyWith<$Res> {
  factory $CurrencySelectedModelCopyWith(CurrencySelectedModel value,
          $Res Function(CurrencySelectedModel) then) =
      _$CurrencySelectedModelCopyWithImpl<$Res, CurrencySelectedModel>;
  @useResult
  $Res call({String currencyCode});
}

/// @nodoc
class _$CurrencySelectedModelCopyWithImpl<$Res,
        $Val extends CurrencySelectedModel>
    implements $CurrencySelectedModelCopyWith<$Res> {
  _$CurrencySelectedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyCode = null,
  }) {
    return _then(_value.copyWith(
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrencySelectedModelImplCopyWith<$Res>
    implements $CurrencySelectedModelCopyWith<$Res> {
  factory _$$CurrencySelectedModelImplCopyWith(
          _$CurrencySelectedModelImpl value,
          $Res Function(_$CurrencySelectedModelImpl) then) =
      __$$CurrencySelectedModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String currencyCode});
}

/// @nodoc
class __$$CurrencySelectedModelImplCopyWithImpl<$Res>
    extends _$CurrencySelectedModelCopyWithImpl<$Res,
        _$CurrencySelectedModelImpl>
    implements _$$CurrencySelectedModelImplCopyWith<$Res> {
  __$$CurrencySelectedModelImplCopyWithImpl(_$CurrencySelectedModelImpl _value,
      $Res Function(_$CurrencySelectedModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencyCode = null,
  }) {
    return _then(_$CurrencySelectedModelImpl(
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CurrencySelectedModelImpl implements _CurrencySelectedModel {
  const _$CurrencySelectedModelImpl({required this.currencyCode});

  @override
  final String currencyCode;

  @override
  String toString() {
    return 'CurrencySelectedModel(currencyCode: $currencyCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencySelectedModelImpl &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currencyCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencySelectedModelImplCopyWith<_$CurrencySelectedModelImpl>
      get copyWith => __$$CurrencySelectedModelImplCopyWithImpl<
          _$CurrencySelectedModelImpl>(this, _$identity);
}

abstract class _CurrencySelectedModel implements CurrencySelectedModel {
  const factory _CurrencySelectedModel({required final String currencyCode}) =
      _$CurrencySelectedModelImpl;

  @override
  String get currencyCode;
  @override
  @JsonKey(ignore: true)
  _$$CurrencySelectedModelImplCopyWith<_$CurrencySelectedModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
