// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_list_response_mole.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CurrencyListResponseModel {
  String get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<dynamic> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrencyListResponseModelCopyWith<CurrencyListResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyListResponseModelCopyWith<$Res> {
  factory $CurrencyListResponseModelCopyWith(CurrencyListResponseModel value,
          $Res Function(CurrencyListResponseModel) then) =
      _$CurrencyListResponseModelCopyWithImpl<$Res, CurrencyListResponseModel>;
  @useResult
  $Res call({String status, String message, List<dynamic> data});
}

/// @nodoc
class _$CurrencyListResponseModelCopyWithImpl<$Res,
        $Val extends CurrencyListResponseModel>
    implements $CurrencyListResponseModelCopyWith<$Res> {
  _$CurrencyListResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrencyListResponseModelImplCopyWith<$Res>
    implements $CurrencyListResponseModelCopyWith<$Res> {
  factory _$$CurrencyListResponseModelImplCopyWith(
          _$CurrencyListResponseModelImpl value,
          $Res Function(_$CurrencyListResponseModelImpl) then) =
      __$$CurrencyListResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String message, List<dynamic> data});
}

/// @nodoc
class __$$CurrencyListResponseModelImplCopyWithImpl<$Res>
    extends _$CurrencyListResponseModelCopyWithImpl<$Res,
        _$CurrencyListResponseModelImpl>
    implements _$$CurrencyListResponseModelImplCopyWith<$Res> {
  __$$CurrencyListResponseModelImplCopyWithImpl(
      _$CurrencyListResponseModelImpl _value,
      $Res Function(_$CurrencyListResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$CurrencyListResponseModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$CurrencyListResponseModelImpl implements _CurrencyListResponseModel {
  const _$CurrencyListResponseModelImpl(
      {required this.status,
      required this.message,
      required final List<dynamic> data})
      : _data = data;

  @override
  final String status;
  @override
  final String message;
  final List<dynamic> _data;
  @override
  List<dynamic> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CurrencyListResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyListResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyListResponseModelImplCopyWith<_$CurrencyListResponseModelImpl>
      get copyWith => __$$CurrencyListResponseModelImplCopyWithImpl<
          _$CurrencyListResponseModelImpl>(this, _$identity);
}

abstract class _CurrencyListResponseModel implements CurrencyListResponseModel {
  const factory _CurrencyListResponseModel(
      {required final String status,
      required final String message,
      required final List<dynamic> data}) = _$CurrencyListResponseModelImpl;

  @override
  String get status;
  @override
  String get message;
  @override
  List<dynamic> get data;
  @override
  @JsonKey(ignore: true)
  _$$CurrencyListResponseModelImplCopyWith<_$CurrencyListResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
