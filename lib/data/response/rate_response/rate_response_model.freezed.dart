// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rate_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RateResponseModel {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<RateDto> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RateResponseModelCopyWith<RateResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateResponseModelCopyWith<$Res> {
  factory $RateResponseModelCopyWith(
          RateResponseModel value, $Res Function(RateResponseModel) then) =
      _$RateResponseModelCopyWithImpl<$Res, RateResponseModel>;
  @useResult
  $Res call({int status, String message, List<RateDto> data});
}

/// @nodoc
class _$RateResponseModelCopyWithImpl<$Res, $Val extends RateResponseModel>
    implements $RateResponseModelCopyWith<$Res> {
  _$RateResponseModelCopyWithImpl(this._value, this._then);

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
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<RateDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RateResponseModelImplCopyWith<$Res>
    implements $RateResponseModelCopyWith<$Res> {
  factory _$$RateResponseModelImplCopyWith(_$RateResponseModelImpl value,
          $Res Function(_$RateResponseModelImpl) then) =
      __$$RateResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, List<RateDto> data});
}

/// @nodoc
class __$$RateResponseModelImplCopyWithImpl<$Res>
    extends _$RateResponseModelCopyWithImpl<$Res, _$RateResponseModelImpl>
    implements _$$RateResponseModelImplCopyWith<$Res> {
  __$$RateResponseModelImplCopyWithImpl(_$RateResponseModelImpl _value,
      $Res Function(_$RateResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$RateResponseModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<RateDto>,
    ));
  }
}

/// @nodoc

class _$RateResponseModelImpl implements _RateResponseModel {
  const _$RateResponseModelImpl(
      {required this.status,
      required this.message,
      required final List<RateDto> data})
      : _data = data;

  @override
  final int status;
  @override
  final String message;
  final List<RateDto> _data;
  @override
  List<RateDto> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'RateResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateResponseModelImpl &&
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
  _$$RateResponseModelImplCopyWith<_$RateResponseModelImpl> get copyWith =>
      __$$RateResponseModelImplCopyWithImpl<_$RateResponseModelImpl>(
          this, _$identity);
}

abstract class _RateResponseModel implements RateResponseModel {
  const factory _RateResponseModel(
      {required final int status,
      required final String message,
      required final List<RateDto> data}) = _$RateResponseModelImpl;

  @override
  int get status;
  @override
  String get message;
  @override
  List<RateDto> get data;
  @override
  @JsonKey(ignore: true)
  _$$RateResponseModelImplCopyWith<_$RateResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
