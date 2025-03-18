// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isFirstTime) started,
    required TResult Function(dynamic cartResponse) updateCart,
    required TResult Function(dynamic cartResponse) addToCart,
    required TResult Function(int id) deleteCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isFirstTime)? started,
    TResult? Function(dynamic cartResponse)? updateCart,
    TResult? Function(dynamic cartResponse)? addToCart,
    TResult? Function(int id)? deleteCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isFirstTime)? started,
    TResult Function(dynamic cartResponse)? updateCart,
    TResult Function(dynamic cartResponse)? addToCart,
    TResult Function(int id)? deleteCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_DeleteCart value) deleteCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateCart value)? updateCart,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_DeleteCart value)? deleteCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_DeleteCart value)? deleteCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isFirstTime});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFirstTime = null,
  }) {
    return _then(_$StartedImpl(
      null == isFirstTime
          ? _value.isFirstTime
          : isFirstTime // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(this.isFirstTime);

  @override
  final bool isFirstTime;

  @override
  String toString() {
    return 'CartEvent.started(isFirstTime: $isFirstTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.isFirstTime, isFirstTime) ||
                other.isFirstTime == isFirstTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFirstTime);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isFirstTime) started,
    required TResult Function(dynamic cartResponse) updateCart,
    required TResult Function(dynamic cartResponse) addToCart,
    required TResult Function(int id) deleteCart,
  }) {
    return started(isFirstTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isFirstTime)? started,
    TResult? Function(dynamic cartResponse)? updateCart,
    TResult? Function(dynamic cartResponse)? addToCart,
    TResult? Function(int id)? deleteCart,
  }) {
    return started?.call(isFirstTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isFirstTime)? started,
    TResult Function(dynamic cartResponse)? updateCart,
    TResult Function(dynamic cartResponse)? addToCart,
    TResult Function(int id)? deleteCart,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(isFirstTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_DeleteCart value) deleteCart,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateCart value)? updateCart,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_DeleteCart value)? deleteCart,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_DeleteCart value)? deleteCart,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CartEvent {
  const factory _Started(final bool isFirstTime) = _$StartedImpl;

  bool get isFirstTime;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCartImplCopyWith<$Res> {
  factory _$$UpdateCartImplCopyWith(
          _$UpdateCartImpl value, $Res Function(_$UpdateCartImpl) then) =
      __$$UpdateCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic cartResponse});
}

/// @nodoc
class __$$UpdateCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$UpdateCartImpl>
    implements _$$UpdateCartImplCopyWith<$Res> {
  __$$UpdateCartImplCopyWithImpl(
      _$UpdateCartImpl _value, $Res Function(_$UpdateCartImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartResponse = freezed,
  }) {
    return _then(_$UpdateCartImpl(
      freezed == cartResponse
          ? _value.cartResponse
          : cartResponse // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$UpdateCartImpl implements _UpdateCart {
  const _$UpdateCartImpl(this.cartResponse);

  @override
  final dynamic cartResponse;

  @override
  String toString() {
    return 'CartEvent.updateCart(cartResponse: $cartResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCartImpl &&
            const DeepCollectionEquality()
                .equals(other.cartResponse, cartResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(cartResponse));

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCartImplCopyWith<_$UpdateCartImpl> get copyWith =>
      __$$UpdateCartImplCopyWithImpl<_$UpdateCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isFirstTime) started,
    required TResult Function(dynamic cartResponse) updateCart,
    required TResult Function(dynamic cartResponse) addToCart,
    required TResult Function(int id) deleteCart,
  }) {
    return updateCart(cartResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isFirstTime)? started,
    TResult? Function(dynamic cartResponse)? updateCart,
    TResult? Function(dynamic cartResponse)? addToCart,
    TResult? Function(int id)? deleteCart,
  }) {
    return updateCart?.call(cartResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isFirstTime)? started,
    TResult Function(dynamic cartResponse)? updateCart,
    TResult Function(dynamic cartResponse)? addToCart,
    TResult Function(int id)? deleteCart,
    required TResult orElse(),
  }) {
    if (updateCart != null) {
      return updateCart(cartResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_DeleteCart value) deleteCart,
  }) {
    return updateCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateCart value)? updateCart,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_DeleteCart value)? deleteCart,
  }) {
    return updateCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_DeleteCart value)? deleteCart,
    required TResult orElse(),
  }) {
    if (updateCart != null) {
      return updateCart(this);
    }
    return orElse();
  }
}

abstract class _UpdateCart implements CartEvent {
  const factory _UpdateCart(final dynamic cartResponse) = _$UpdateCartImpl;

  dynamic get cartResponse;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateCartImplCopyWith<_$UpdateCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddToCartImplCopyWith<$Res> {
  factory _$$AddToCartImplCopyWith(
          _$AddToCartImpl value, $Res Function(_$AddToCartImpl) then) =
      __$$AddToCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic cartResponse});
}

/// @nodoc
class __$$AddToCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$AddToCartImpl>
    implements _$$AddToCartImplCopyWith<$Res> {
  __$$AddToCartImplCopyWithImpl(
      _$AddToCartImpl _value, $Res Function(_$AddToCartImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartResponse = freezed,
  }) {
    return _then(_$AddToCartImpl(
      freezed == cartResponse
          ? _value.cartResponse
          : cartResponse // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$AddToCartImpl implements _AddToCart {
  const _$AddToCartImpl(this.cartResponse);

  @override
  final dynamic cartResponse;

  @override
  String toString() {
    return 'CartEvent.addToCart(cartResponse: $cartResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartImpl &&
            const DeepCollectionEquality()
                .equals(other.cartResponse, cartResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(cartResponse));

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartImplCopyWith<_$AddToCartImpl> get copyWith =>
      __$$AddToCartImplCopyWithImpl<_$AddToCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isFirstTime) started,
    required TResult Function(dynamic cartResponse) updateCart,
    required TResult Function(dynamic cartResponse) addToCart,
    required TResult Function(int id) deleteCart,
  }) {
    return addToCart(cartResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isFirstTime)? started,
    TResult? Function(dynamic cartResponse)? updateCart,
    TResult? Function(dynamic cartResponse)? addToCart,
    TResult? Function(int id)? deleteCart,
  }) {
    return addToCart?.call(cartResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isFirstTime)? started,
    TResult Function(dynamic cartResponse)? updateCart,
    TResult Function(dynamic cartResponse)? addToCart,
    TResult Function(int id)? deleteCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(cartResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_DeleteCart value) deleteCart,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateCart value)? updateCart,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_DeleteCart value)? deleteCart,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_DeleteCart value)? deleteCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class _AddToCart implements CartEvent {
  const factory _AddToCart(final dynamic cartResponse) = _$AddToCartImpl;

  dynamic get cartResponse;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddToCartImplCopyWith<_$AddToCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCartImplCopyWith<$Res> {
  factory _$$DeleteCartImplCopyWith(
          _$DeleteCartImpl value, $Res Function(_$DeleteCartImpl) then) =
      __$$DeleteCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$DeleteCartImpl>
    implements _$$DeleteCartImplCopyWith<$Res> {
  __$$DeleteCartImplCopyWithImpl(
      _$DeleteCartImpl _value, $Res Function(_$DeleteCartImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteCartImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteCartImpl implements _DeleteCart {
  const _$DeleteCartImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'CartEvent.deleteCart(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCartImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCartImplCopyWith<_$DeleteCartImpl> get copyWith =>
      __$$DeleteCartImplCopyWithImpl<_$DeleteCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isFirstTime) started,
    required TResult Function(dynamic cartResponse) updateCart,
    required TResult Function(dynamic cartResponse) addToCart,
    required TResult Function(int id) deleteCart,
  }) {
    return deleteCart(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isFirstTime)? started,
    TResult? Function(dynamic cartResponse)? updateCart,
    TResult? Function(dynamic cartResponse)? addToCart,
    TResult? Function(int id)? deleteCart,
  }) {
    return deleteCart?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isFirstTime)? started,
    TResult Function(dynamic cartResponse)? updateCart,
    TResult Function(dynamic cartResponse)? addToCart,
    TResult Function(int id)? deleteCart,
    required TResult orElse(),
  }) {
    if (deleteCart != null) {
      return deleteCart(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_DeleteCart value) deleteCart,
  }) {
    return deleteCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateCart value)? updateCart,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_DeleteCart value)? deleteCart,
  }) {
    return deleteCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_DeleteCart value)? deleteCart,
    required TResult orElse(),
  }) {
    if (deleteCart != null) {
      return deleteCart(this);
    }
    return orElse();
  }
}

abstract class _DeleteCart implements CartEvent {
  const factory _DeleteCart(final int id) = _$DeleteCartImpl;

  int get id;

  /// Create a copy of CartEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteCartImplCopyWith<_$DeleteCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  ViewState get viewState => throw _privateConstructorUsedError;
  ViewState get deleteViewState => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  CartsResponse? get cart => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ViewState viewState, ViewState deleteViewState,
            String errorMessage, CartsResponse? cart)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ViewState viewState, ViewState deleteViewState,
            String errorMessage, CartsResponse? cart)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ViewState viewState, ViewState deleteViewState,
            String errorMessage, CartsResponse? cart)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call(
      {ViewState viewState,
      ViewState deleteViewState,
      String errorMessage,
      CartsResponse? cart});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewState = null,
    Object? deleteViewState = null,
    Object? errorMessage = null,
    Object? cart = freezed,
  }) {
    return _then(_value.copyWith(
      viewState: null == viewState
          ? _value.viewState
          : viewState // ignore: cast_nullable_to_non_nullable
              as ViewState,
      deleteViewState: null == deleteViewState
          ? _value.deleteViewState
          : deleteViewState // ignore: cast_nullable_to_non_nullable
              as ViewState,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      cart: freezed == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as CartsResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ViewState viewState,
      ViewState deleteViewState,
      String errorMessage,
      CartsResponse? cart});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewState = null,
    Object? deleteViewState = null,
    Object? errorMessage = null,
    Object? cart = freezed,
  }) {
    return _then(_$InitialImpl(
      viewState: null == viewState
          ? _value.viewState
          : viewState // ignore: cast_nullable_to_non_nullable
              as ViewState,
      deleteViewState: null == deleteViewState
          ? _value.deleteViewState
          : deleteViewState // ignore: cast_nullable_to_non_nullable
              as ViewState,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      cart: freezed == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as CartsResponse?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.viewState = ViewState.idle,
      this.deleteViewState = ViewState.idle,
      this.errorMessage = '',
      this.cart});

  @override
  @JsonKey()
  final ViewState viewState;
  @override
  @JsonKey()
  final ViewState deleteViewState;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  final CartsResponse? cart;

  @override
  String toString() {
    return 'CartState.initial(viewState: $viewState, deleteViewState: $deleteViewState, errorMessage: $errorMessage, cart: $cart)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.viewState, viewState) ||
                other.viewState == viewState) &&
            (identical(other.deleteViewState, deleteViewState) ||
                other.deleteViewState == deleteViewState) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.cart, cart) || other.cart == cart));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, viewState, deleteViewState, errorMessage, cart);

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ViewState viewState, ViewState deleteViewState,
            String errorMessage, CartsResponse? cart)
        initial,
  }) {
    return initial(viewState, deleteViewState, errorMessage, cart);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ViewState viewState, ViewState deleteViewState,
            String errorMessage, CartsResponse? cart)?
        initial,
  }) {
    return initial?.call(viewState, deleteViewState, errorMessage, cart);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ViewState viewState, ViewState deleteViewState,
            String errorMessage, CartsResponse? cart)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(viewState, deleteViewState, errorMessage, cart);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CartState {
  const factory _Initial(
      {final ViewState viewState,
      final ViewState deleteViewState,
      final String errorMessage,
      final CartsResponse? cart}) = _$InitialImpl;

  @override
  ViewState get viewState;
  @override
  ViewState get deleteViewState;
  @override
  String get errorMessage;
  @override
  CartsResponse? get cart;

  /// Create a copy of CartState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
