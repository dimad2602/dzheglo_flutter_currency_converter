// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency_converter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CurrencyConverterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCurrencyList,
    required TResult Function(
            CurrencySelectedModel currencySelected, double amount)
        changeCurrency,
    required TResult Function() swapCurrency,
    required TResult Function(double amount, double rate) convertAmounChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCurrencyList,
    TResult? Function(CurrencySelectedModel currencySelected, double amount)?
        changeCurrency,
    TResult? Function()? swapCurrency,
    TResult? Function(double amount, double rate)? convertAmounChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurrencyList,
    TResult Function(CurrencySelectedModel currencySelected, double amount)?
        changeCurrency,
    TResult Function()? swapCurrency,
    TResult Function(double amount, double rate)? convertAmounChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCurrencyList value) getCurrencyList,
    required TResult Function(_ChangeCurrency value) changeCurrency,
    required TResult Function(_SwapCurrency value) swapCurrency,
    required TResult Function(_ConvertAmounChanged value) convertAmounChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetCurrencyList value)? getCurrencyList,
    TResult? Function(_ChangeCurrency value)? changeCurrency,
    TResult? Function(_SwapCurrency value)? swapCurrency,
    TResult? Function(_ConvertAmounChanged value)? convertAmounChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurrencyList value)? getCurrencyList,
    TResult Function(_ChangeCurrency value)? changeCurrency,
    TResult Function(_SwapCurrency value)? swapCurrency,
    TResult Function(_ConvertAmounChanged value)? convertAmounChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyConverterEventCopyWith<$Res> {
  factory $CurrencyConverterEventCopyWith(CurrencyConverterEvent value,
          $Res Function(CurrencyConverterEvent) then) =
      _$CurrencyConverterEventCopyWithImpl<$Res, CurrencyConverterEvent>;
}

/// @nodoc
class _$CurrencyConverterEventCopyWithImpl<$Res,
        $Val extends CurrencyConverterEvent>
    implements $CurrencyConverterEventCopyWith<$Res> {
  _$CurrencyConverterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CurrencyConverterEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CurrencyConverterEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCurrencyList,
    required TResult Function(
            CurrencySelectedModel currencySelected, double amount)
        changeCurrency,
    required TResult Function() swapCurrency,
    required TResult Function(double amount, double rate) convertAmounChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCurrencyList,
    TResult? Function(CurrencySelectedModel currencySelected, double amount)?
        changeCurrency,
    TResult? Function()? swapCurrency,
    TResult? Function(double amount, double rate)? convertAmounChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurrencyList,
    TResult Function(CurrencySelectedModel currencySelected, double amount)?
        changeCurrency,
    TResult Function()? swapCurrency,
    TResult Function(double amount, double rate)? convertAmounChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCurrencyList value) getCurrencyList,
    required TResult Function(_ChangeCurrency value) changeCurrency,
    required TResult Function(_SwapCurrency value) swapCurrency,
    required TResult Function(_ConvertAmounChanged value) convertAmounChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetCurrencyList value)? getCurrencyList,
    TResult? Function(_ChangeCurrency value)? changeCurrency,
    TResult? Function(_SwapCurrency value)? swapCurrency,
    TResult? Function(_ConvertAmounChanged value)? convertAmounChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurrencyList value)? getCurrencyList,
    TResult Function(_ChangeCurrency value)? changeCurrency,
    TResult Function(_SwapCurrency value)? swapCurrency,
    TResult Function(_ConvertAmounChanged value)? convertAmounChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CurrencyConverterEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetCurrencyListImplCopyWith<$Res> {
  factory _$$GetCurrencyListImplCopyWith(_$GetCurrencyListImpl value,
          $Res Function(_$GetCurrencyListImpl) then) =
      __$$GetCurrencyListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCurrencyListImplCopyWithImpl<$Res>
    extends _$CurrencyConverterEventCopyWithImpl<$Res, _$GetCurrencyListImpl>
    implements _$$GetCurrencyListImplCopyWith<$Res> {
  __$$GetCurrencyListImplCopyWithImpl(
      _$GetCurrencyListImpl _value, $Res Function(_$GetCurrencyListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCurrencyListImpl implements _GetCurrencyList {
  const _$GetCurrencyListImpl();

  @override
  String toString() {
    return 'CurrencyConverterEvent.getCurrencyList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCurrencyListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCurrencyList,
    required TResult Function(
            CurrencySelectedModel currencySelected, double amount)
        changeCurrency,
    required TResult Function() swapCurrency,
    required TResult Function(double amount, double rate) convertAmounChanged,
  }) {
    return getCurrencyList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCurrencyList,
    TResult? Function(CurrencySelectedModel currencySelected, double amount)?
        changeCurrency,
    TResult? Function()? swapCurrency,
    TResult? Function(double amount, double rate)? convertAmounChanged,
  }) {
    return getCurrencyList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurrencyList,
    TResult Function(CurrencySelectedModel currencySelected, double amount)?
        changeCurrency,
    TResult Function()? swapCurrency,
    TResult Function(double amount, double rate)? convertAmounChanged,
    required TResult orElse(),
  }) {
    if (getCurrencyList != null) {
      return getCurrencyList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCurrencyList value) getCurrencyList,
    required TResult Function(_ChangeCurrency value) changeCurrency,
    required TResult Function(_SwapCurrency value) swapCurrency,
    required TResult Function(_ConvertAmounChanged value) convertAmounChanged,
  }) {
    return getCurrencyList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetCurrencyList value)? getCurrencyList,
    TResult? Function(_ChangeCurrency value)? changeCurrency,
    TResult? Function(_SwapCurrency value)? swapCurrency,
    TResult? Function(_ConvertAmounChanged value)? convertAmounChanged,
  }) {
    return getCurrencyList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurrencyList value)? getCurrencyList,
    TResult Function(_ChangeCurrency value)? changeCurrency,
    TResult Function(_SwapCurrency value)? swapCurrency,
    TResult Function(_ConvertAmounChanged value)? convertAmounChanged,
    required TResult orElse(),
  }) {
    if (getCurrencyList != null) {
      return getCurrencyList(this);
    }
    return orElse();
  }
}

abstract class _GetCurrencyList implements CurrencyConverterEvent {
  const factory _GetCurrencyList() = _$GetCurrencyListImpl;
}

/// @nodoc
abstract class _$$ChangeCurrencyImplCopyWith<$Res> {
  factory _$$ChangeCurrencyImplCopyWith(_$ChangeCurrencyImpl value,
          $Res Function(_$ChangeCurrencyImpl) then) =
      __$$ChangeCurrencyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CurrencySelectedModel currencySelected, double amount});

  $CurrencySelectedModelCopyWith<$Res> get currencySelected;
}

/// @nodoc
class __$$ChangeCurrencyImplCopyWithImpl<$Res>
    extends _$CurrencyConverterEventCopyWithImpl<$Res, _$ChangeCurrencyImpl>
    implements _$$ChangeCurrencyImplCopyWith<$Res> {
  __$$ChangeCurrencyImplCopyWithImpl(
      _$ChangeCurrencyImpl _value, $Res Function(_$ChangeCurrencyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencySelected = null,
    Object? amount = null,
  }) {
    return _then(_$ChangeCurrencyImpl(
      currencySelected: null == currencySelected
          ? _value.currencySelected
          : currencySelected // ignore: cast_nullable_to_non_nullable
              as CurrencySelectedModel,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrencySelectedModelCopyWith<$Res> get currencySelected {
    return $CurrencySelectedModelCopyWith<$Res>(_value.currencySelected,
        (value) {
      return _then(_value.copyWith(currencySelected: value));
    });
  }
}

/// @nodoc

class _$ChangeCurrencyImpl implements _ChangeCurrency {
  const _$ChangeCurrencyImpl(
      {required this.currencySelected, required this.amount});

  @override
  final CurrencySelectedModel currencySelected;
  @override
  final double amount;

  @override
  String toString() {
    return 'CurrencyConverterEvent.changeCurrency(currencySelected: $currencySelected, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCurrencyImpl &&
            (identical(other.currencySelected, currencySelected) ||
                other.currencySelected == currencySelected) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currencySelected, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeCurrencyImplCopyWith<_$ChangeCurrencyImpl> get copyWith =>
      __$$ChangeCurrencyImplCopyWithImpl<_$ChangeCurrencyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCurrencyList,
    required TResult Function(
            CurrencySelectedModel currencySelected, double amount)
        changeCurrency,
    required TResult Function() swapCurrency,
    required TResult Function(double amount, double rate) convertAmounChanged,
  }) {
    return changeCurrency(currencySelected, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCurrencyList,
    TResult? Function(CurrencySelectedModel currencySelected, double amount)?
        changeCurrency,
    TResult? Function()? swapCurrency,
    TResult? Function(double amount, double rate)? convertAmounChanged,
  }) {
    return changeCurrency?.call(currencySelected, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurrencyList,
    TResult Function(CurrencySelectedModel currencySelected, double amount)?
        changeCurrency,
    TResult Function()? swapCurrency,
    TResult Function(double amount, double rate)? convertAmounChanged,
    required TResult orElse(),
  }) {
    if (changeCurrency != null) {
      return changeCurrency(currencySelected, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCurrencyList value) getCurrencyList,
    required TResult Function(_ChangeCurrency value) changeCurrency,
    required TResult Function(_SwapCurrency value) swapCurrency,
    required TResult Function(_ConvertAmounChanged value) convertAmounChanged,
  }) {
    return changeCurrency(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetCurrencyList value)? getCurrencyList,
    TResult? Function(_ChangeCurrency value)? changeCurrency,
    TResult? Function(_SwapCurrency value)? swapCurrency,
    TResult? Function(_ConvertAmounChanged value)? convertAmounChanged,
  }) {
    return changeCurrency?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurrencyList value)? getCurrencyList,
    TResult Function(_ChangeCurrency value)? changeCurrency,
    TResult Function(_SwapCurrency value)? swapCurrency,
    TResult Function(_ConvertAmounChanged value)? convertAmounChanged,
    required TResult orElse(),
  }) {
    if (changeCurrency != null) {
      return changeCurrency(this);
    }
    return orElse();
  }
}

abstract class _ChangeCurrency implements CurrencyConverterEvent {
  const factory _ChangeCurrency(
      {required final CurrencySelectedModel currencySelected,
      required final double amount}) = _$ChangeCurrencyImpl;

  CurrencySelectedModel get currencySelected;
  double get amount;
  @JsonKey(ignore: true)
  _$$ChangeCurrencyImplCopyWith<_$ChangeCurrencyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwapCurrencyImplCopyWith<$Res> {
  factory _$$SwapCurrencyImplCopyWith(
          _$SwapCurrencyImpl value, $Res Function(_$SwapCurrencyImpl) then) =
      __$$SwapCurrencyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SwapCurrencyImplCopyWithImpl<$Res>
    extends _$CurrencyConverterEventCopyWithImpl<$Res, _$SwapCurrencyImpl>
    implements _$$SwapCurrencyImplCopyWith<$Res> {
  __$$SwapCurrencyImplCopyWithImpl(
      _$SwapCurrencyImpl _value, $Res Function(_$SwapCurrencyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SwapCurrencyImpl implements _SwapCurrency {
  const _$SwapCurrencyImpl();

  @override
  String toString() {
    return 'CurrencyConverterEvent.swapCurrency()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SwapCurrencyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCurrencyList,
    required TResult Function(
            CurrencySelectedModel currencySelected, double amount)
        changeCurrency,
    required TResult Function() swapCurrency,
    required TResult Function(double amount, double rate) convertAmounChanged,
  }) {
    return swapCurrency();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCurrencyList,
    TResult? Function(CurrencySelectedModel currencySelected, double amount)?
        changeCurrency,
    TResult? Function()? swapCurrency,
    TResult? Function(double amount, double rate)? convertAmounChanged,
  }) {
    return swapCurrency?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurrencyList,
    TResult Function(CurrencySelectedModel currencySelected, double amount)?
        changeCurrency,
    TResult Function()? swapCurrency,
    TResult Function(double amount, double rate)? convertAmounChanged,
    required TResult orElse(),
  }) {
    if (swapCurrency != null) {
      return swapCurrency();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCurrencyList value) getCurrencyList,
    required TResult Function(_ChangeCurrency value) changeCurrency,
    required TResult Function(_SwapCurrency value) swapCurrency,
    required TResult Function(_ConvertAmounChanged value) convertAmounChanged,
  }) {
    return swapCurrency(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetCurrencyList value)? getCurrencyList,
    TResult? Function(_ChangeCurrency value)? changeCurrency,
    TResult? Function(_SwapCurrency value)? swapCurrency,
    TResult? Function(_ConvertAmounChanged value)? convertAmounChanged,
  }) {
    return swapCurrency?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurrencyList value)? getCurrencyList,
    TResult Function(_ChangeCurrency value)? changeCurrency,
    TResult Function(_SwapCurrency value)? swapCurrency,
    TResult Function(_ConvertAmounChanged value)? convertAmounChanged,
    required TResult orElse(),
  }) {
    if (swapCurrency != null) {
      return swapCurrency(this);
    }
    return orElse();
  }
}

abstract class _SwapCurrency implements CurrencyConverterEvent {
  const factory _SwapCurrency() = _$SwapCurrencyImpl;
}

/// @nodoc
abstract class _$$ConvertAmounChangedImplCopyWith<$Res> {
  factory _$$ConvertAmounChangedImplCopyWith(_$ConvertAmounChangedImpl value,
          $Res Function(_$ConvertAmounChangedImpl) then) =
      __$$ConvertAmounChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double amount, double rate});
}

/// @nodoc
class __$$ConvertAmounChangedImplCopyWithImpl<$Res>
    extends _$CurrencyConverterEventCopyWithImpl<$Res,
        _$ConvertAmounChangedImpl>
    implements _$$ConvertAmounChangedImplCopyWith<$Res> {
  __$$ConvertAmounChangedImplCopyWithImpl(_$ConvertAmounChangedImpl _value,
      $Res Function(_$ConvertAmounChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? rate = null,
  }) {
    return _then(_$ConvertAmounChangedImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      rate: null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ConvertAmounChangedImpl implements _ConvertAmounChanged {
  const _$ConvertAmounChangedImpl({required this.amount, required this.rate});

  @override
  final double amount;
  @override
  final double rate;

  @override
  String toString() {
    return 'CurrencyConverterEvent.convertAmounChanged(amount: $amount, rate: $rate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConvertAmounChangedImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount, rate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConvertAmounChangedImplCopyWith<_$ConvertAmounChangedImpl> get copyWith =>
      __$$ConvertAmounChangedImplCopyWithImpl<_$ConvertAmounChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getCurrencyList,
    required TResult Function(
            CurrencySelectedModel currencySelected, double amount)
        changeCurrency,
    required TResult Function() swapCurrency,
    required TResult Function(double amount, double rate) convertAmounChanged,
  }) {
    return convertAmounChanged(amount, rate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getCurrencyList,
    TResult? Function(CurrencySelectedModel currencySelected, double amount)?
        changeCurrency,
    TResult? Function()? swapCurrency,
    TResult? Function(double amount, double rate)? convertAmounChanged,
  }) {
    return convertAmounChanged?.call(amount, rate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getCurrencyList,
    TResult Function(CurrencySelectedModel currencySelected, double amount)?
        changeCurrency,
    TResult Function()? swapCurrency,
    TResult Function(double amount, double rate)? convertAmounChanged,
    required TResult orElse(),
  }) {
    if (convertAmounChanged != null) {
      return convertAmounChanged(amount, rate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCurrencyList value) getCurrencyList,
    required TResult Function(_ChangeCurrency value) changeCurrency,
    required TResult Function(_SwapCurrency value) swapCurrency,
    required TResult Function(_ConvertAmounChanged value) convertAmounChanged,
  }) {
    return convertAmounChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetCurrencyList value)? getCurrencyList,
    TResult? Function(_ChangeCurrency value)? changeCurrency,
    TResult? Function(_SwapCurrency value)? swapCurrency,
    TResult? Function(_ConvertAmounChanged value)? convertAmounChanged,
  }) {
    return convertAmounChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCurrencyList value)? getCurrencyList,
    TResult Function(_ChangeCurrency value)? changeCurrency,
    TResult Function(_SwapCurrency value)? swapCurrency,
    TResult Function(_ConvertAmounChanged value)? convertAmounChanged,
    required TResult orElse(),
  }) {
    if (convertAmounChanged != null) {
      return convertAmounChanged(this);
    }
    return orElse();
  }
}

abstract class _ConvertAmounChanged implements CurrencyConverterEvent {
  const factory _ConvertAmounChanged(
      {required final double amount,
      required final double rate}) = _$ConvertAmounChangedImpl;

  double get amount;
  double get rate;
  @JsonKey(ignore: true)
  _$$ConvertAmounChangedImplCopyWith<_$ConvertAmounChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CurrencyConverterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            double amount,
            List<RateModel> rateModel,
            CurrencySelectedModel currencySelectedModel,
            double? convertedAmount)
        currency,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            double amount,
            List<RateModel> rateModel,
            CurrencySelectedModel currencySelectedModel,
            double? convertedAmount)?
        currency,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            double amount,
            List<RateModel> rateModel,
            CurrencySelectedModel currencySelectedModel,
            double? convertedAmount)?
        currency,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Currency value) currency,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Currency value)? currency,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Currency value)? currency,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyConverterStateCopyWith<$Res> {
  factory $CurrencyConverterStateCopyWith(CurrencyConverterState value,
          $Res Function(CurrencyConverterState) then) =
      _$CurrencyConverterStateCopyWithImpl<$Res, CurrencyConverterState>;
}

/// @nodoc
class _$CurrencyConverterStateCopyWithImpl<$Res,
        $Val extends CurrencyConverterState>
    implements $CurrencyConverterStateCopyWith<$Res> {
  _$CurrencyConverterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CurrencyConverterStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl() : super._();

  @override
  String toString() {
    return 'CurrencyConverterState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            double amount,
            List<RateModel> rateModel,
            CurrencySelectedModel currencySelectedModel,
            double? convertedAmount)
        currency,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            double amount,
            List<RateModel> rateModel,
            CurrencySelectedModel currencySelectedModel,
            double? convertedAmount)?
        currency,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            double amount,
            List<RateModel> rateModel,
            CurrencySelectedModel currencySelectedModel,
            double? convertedAmount)?
        currency,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Currency value) currency,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Currency value)? currency,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Currency value)? currency,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends CurrencyConverterState {
  const factory _Initial() = _$InitialImpl;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CurrencyConverterStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl extends _Loading {
  const _$LoadingImpl() : super._();

  @override
  String toString() {
    return 'CurrencyConverterState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            double amount,
            List<RateModel> rateModel,
            CurrencySelectedModel currencySelectedModel,
            double? convertedAmount)
        currency,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            double amount,
            List<RateModel> rateModel,
            CurrencySelectedModel currencySelectedModel,
            double? convertedAmount)?
        currency,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            double amount,
            List<RateModel> rateModel,
            CurrencySelectedModel currencySelectedModel,
            double? convertedAmount)?
        currency,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Currency value) currency,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Currency value)? currency,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Currency value)? currency,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends CurrencyConverterState {
  const factory _Loading() = _$LoadingImpl;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$CurrencyImplCopyWith<$Res> {
  factory _$$CurrencyImplCopyWith(
          _$CurrencyImpl value, $Res Function(_$CurrencyImpl) then) =
      __$$CurrencyImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {double amount,
      List<RateModel> rateModel,
      CurrencySelectedModel currencySelectedModel,
      double? convertedAmount});

  $CurrencySelectedModelCopyWith<$Res> get currencySelectedModel;
}

/// @nodoc
class __$$CurrencyImplCopyWithImpl<$Res>
    extends _$CurrencyConverterStateCopyWithImpl<$Res, _$CurrencyImpl>
    implements _$$CurrencyImplCopyWith<$Res> {
  __$$CurrencyImplCopyWithImpl(
      _$CurrencyImpl _value, $Res Function(_$CurrencyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? rateModel = null,
    Object? currencySelectedModel = null,
    Object? convertedAmount = freezed,
  }) {
    return _then(_$CurrencyImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      rateModel: null == rateModel
          ? _value._rateModel
          : rateModel // ignore: cast_nullable_to_non_nullable
              as List<RateModel>,
      currencySelectedModel: null == currencySelectedModel
          ? _value.currencySelectedModel
          : currencySelectedModel // ignore: cast_nullable_to_non_nullable
              as CurrencySelectedModel,
      convertedAmount: freezed == convertedAmount
          ? _value.convertedAmount
          : convertedAmount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrencySelectedModelCopyWith<$Res> get currencySelectedModel {
    return $CurrencySelectedModelCopyWith<$Res>(_value.currencySelectedModel,
        (value) {
      return _then(_value.copyWith(currencySelectedModel: value));
    });
  }
}

/// @nodoc

class _$CurrencyImpl extends _Currency {
  const _$CurrencyImpl(
      {required this.amount,
      required final List<RateModel> rateModel,
      required this.currencySelectedModel,
      this.convertedAmount})
      : _rateModel = rateModel,
        super._();

  @override
  final double amount;
  final List<RateModel> _rateModel;
  @override
  List<RateModel> get rateModel {
    if (_rateModel is EqualUnmodifiableListView) return _rateModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rateModel);
  }

  @override
  final CurrencySelectedModel currencySelectedModel;
  @override
  final double? convertedAmount;

  @override
  String toString() {
    return 'CurrencyConverterState.currency(amount: $amount, rateModel: $rateModel, currencySelectedModel: $currencySelectedModel, convertedAmount: $convertedAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrencyImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            const DeepCollectionEquality()
                .equals(other._rateModel, _rateModel) &&
            (identical(other.currencySelectedModel, currencySelectedModel) ||
                other.currencySelectedModel == currencySelectedModel) &&
            (identical(other.convertedAmount, convertedAmount) ||
                other.convertedAmount == convertedAmount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      amount,
      const DeepCollectionEquality().hash(_rateModel),
      currencySelectedModel,
      convertedAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrencyImplCopyWith<_$CurrencyImpl> get copyWith =>
      __$$CurrencyImplCopyWithImpl<_$CurrencyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            double amount,
            List<RateModel> rateModel,
            CurrencySelectedModel currencySelectedModel,
            double? convertedAmount)
        currency,
    required TResult Function(String errorMessage) error,
  }) {
    return currency(amount, rateModel, currencySelectedModel, convertedAmount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            double amount,
            List<RateModel> rateModel,
            CurrencySelectedModel currencySelectedModel,
            double? convertedAmount)?
        currency,
    TResult? Function(String errorMessage)? error,
  }) {
    return currency?.call(
        amount, rateModel, currencySelectedModel, convertedAmount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            double amount,
            List<RateModel> rateModel,
            CurrencySelectedModel currencySelectedModel,
            double? convertedAmount)?
        currency,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (currency != null) {
      return currency(
          amount, rateModel, currencySelectedModel, convertedAmount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Currency value) currency,
    required TResult Function(_Error value) error,
  }) {
    return currency(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Currency value)? currency,
    TResult? Function(_Error value)? error,
  }) {
    return currency?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Currency value)? currency,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (currency != null) {
      return currency(this);
    }
    return orElse();
  }
}

abstract class _Currency extends CurrencyConverterState {
  const factory _Currency(
      {required final double amount,
      required final List<RateModel> rateModel,
      required final CurrencySelectedModel currencySelectedModel,
      final double? convertedAmount}) = _$CurrencyImpl;
  const _Currency._() : super._();

  double get amount;
  List<RateModel> get rateModel;
  CurrencySelectedModel get currencySelectedModel;
  double? get convertedAmount;
  @JsonKey(ignore: true)
  _$$CurrencyImplCopyWith<_$CurrencyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CurrencyConverterStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ErrorImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl extends _Error {
  const _$ErrorImpl({required this.errorMessage}) : super._();

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CurrencyConverterState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            double amount,
            List<RateModel> rateModel,
            CurrencySelectedModel currencySelectedModel,
            double? convertedAmount)
        currency,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            double amount,
            List<RateModel> rateModel,
            CurrencySelectedModel currencySelectedModel,
            double? convertedAmount)?
        currency,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            double amount,
            List<RateModel> rateModel,
            CurrencySelectedModel currencySelectedModel,
            double? convertedAmount)?
        currency,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Currency value) currency,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Currency value)? currency,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Currency value)? currency,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends CurrencyConverterState {
  const factory _Error({required final String errorMessage}) = _$ErrorImpl;
  const _Error._() : super._();

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
