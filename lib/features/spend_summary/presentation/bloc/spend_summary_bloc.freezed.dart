// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spend_summary_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SpendSummaryEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpendSummaryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SpendSummaryEvent()';
}


}

/// @nodoc
class $SpendSummaryEventCopyWith<$Res>  {
$SpendSummaryEventCopyWith(SpendSummaryEvent _, $Res Function(SpendSummaryEvent) __);
}


/// Adds pattern-matching-related methods to [SpendSummaryEvent].
extension SpendSummaryEventPatterns on SpendSummaryEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetSpendSummary value)?  getSpendSummary,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetSpendSummary() when getSpendSummary != null:
return getSpendSummary(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetSpendSummary value)  getSpendSummary,}){
final _that = this;
switch (_that) {
case _GetSpendSummary():
return getSpendSummary(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetSpendSummary value)?  getSpendSummary,}){
final _that = this;
switch (_that) {
case _GetSpendSummary() when getSpendSummary != null:
return getSpendSummary(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getSpendSummary,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetSpendSummary() when getSpendSummary != null:
return getSpendSummary();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getSpendSummary,}) {final _that = this;
switch (_that) {
case _GetSpendSummary():
return getSpendSummary();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getSpendSummary,}) {final _that = this;
switch (_that) {
case _GetSpendSummary() when getSpendSummary != null:
return getSpendSummary();case _:
  return null;

}
}

}

/// @nodoc


class _GetSpendSummary implements SpendSummaryEvent {
  const _GetSpendSummary();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetSpendSummary);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SpendSummaryEvent.getSpendSummary()';
}


}




/// @nodoc
mixin _$SpendSummaryState {

 bool get isLoading; CampaignAnalyticsResponseEntity? get spendSummary; String? get successMessage; bool get isError; String? get errorMessage;
/// Create a copy of SpendSummaryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpendSummaryStateCopyWith<SpendSummaryState> get copyWith => _$SpendSummaryStateCopyWithImpl<SpendSummaryState>(this as SpendSummaryState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpendSummaryState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.spendSummary, spendSummary) || other.spendSummary == spendSummary)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,spendSummary,successMessage,isError,errorMessage);

@override
String toString() {
  return 'SpendSummaryState(isLoading: $isLoading, spendSummary: $spendSummary, successMessage: $successMessage, isError: $isError, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $SpendSummaryStateCopyWith<$Res>  {
  factory $SpendSummaryStateCopyWith(SpendSummaryState value, $Res Function(SpendSummaryState) _then) = _$SpendSummaryStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, CampaignAnalyticsResponseEntity? spendSummary, String? successMessage, bool isError, String? errorMessage
});




}
/// @nodoc
class _$SpendSummaryStateCopyWithImpl<$Res>
    implements $SpendSummaryStateCopyWith<$Res> {
  _$SpendSummaryStateCopyWithImpl(this._self, this._then);

  final SpendSummaryState _self;
  final $Res Function(SpendSummaryState) _then;

/// Create a copy of SpendSummaryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? spendSummary = freezed,Object? successMessage = freezed,Object? isError = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,spendSummary: freezed == spendSummary ? _self.spendSummary : spendSummary // ignore: cast_nullable_to_non_nullable
as CampaignAnalyticsResponseEntity?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SpendSummaryState].
extension SpendSummaryStatePatterns on SpendSummaryState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpendSummaryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpendSummaryState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpendSummaryState value)  $default,){
final _that = this;
switch (_that) {
case _SpendSummaryState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpendSummaryState value)?  $default,){
final _that = this;
switch (_that) {
case _SpendSummaryState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  CampaignAnalyticsResponseEntity? spendSummary,  String? successMessage,  bool isError,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpendSummaryState() when $default != null:
return $default(_that.isLoading,_that.spendSummary,_that.successMessage,_that.isError,_that.errorMessage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  CampaignAnalyticsResponseEntity? spendSummary,  String? successMessage,  bool isError,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _SpendSummaryState():
return $default(_that.isLoading,_that.spendSummary,_that.successMessage,_that.isError,_that.errorMessage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  CampaignAnalyticsResponseEntity? spendSummary,  String? successMessage,  bool isError,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _SpendSummaryState() when $default != null:
return $default(_that.isLoading,_that.spendSummary,_that.successMessage,_that.isError,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _SpendSummaryState implements SpendSummaryState {
  const _SpendSummaryState({this.isLoading = false, this.spendSummary, this.successMessage, this.isError = false, this.errorMessage});
  

@override@JsonKey() final  bool isLoading;
@override final  CampaignAnalyticsResponseEntity? spendSummary;
@override final  String? successMessage;
@override@JsonKey() final  bool isError;
@override final  String? errorMessage;

/// Create a copy of SpendSummaryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpendSummaryStateCopyWith<_SpendSummaryState> get copyWith => __$SpendSummaryStateCopyWithImpl<_SpendSummaryState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpendSummaryState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.spendSummary, spendSummary) || other.spendSummary == spendSummary)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,spendSummary,successMessage,isError,errorMessage);

@override
String toString() {
  return 'SpendSummaryState(isLoading: $isLoading, spendSummary: $spendSummary, successMessage: $successMessage, isError: $isError, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$SpendSummaryStateCopyWith<$Res> implements $SpendSummaryStateCopyWith<$Res> {
  factory _$SpendSummaryStateCopyWith(_SpendSummaryState value, $Res Function(_SpendSummaryState) _then) = __$SpendSummaryStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, CampaignAnalyticsResponseEntity? spendSummary, String? successMessage, bool isError, String? errorMessage
});




}
/// @nodoc
class __$SpendSummaryStateCopyWithImpl<$Res>
    implements _$SpendSummaryStateCopyWith<$Res> {
  __$SpendSummaryStateCopyWithImpl(this._self, this._then);

  final _SpendSummaryState _self;
  final $Res Function(_SpendSummaryState) _then;

/// Create a copy of SpendSummaryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? spendSummary = freezed,Object? successMessage = freezed,Object? isError = null,Object? errorMessage = freezed,}) {
  return _then(_SpendSummaryState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,spendSummary: freezed == spendSummary ? _self.spendSummary : spendSummary // ignore: cast_nullable_to_non_nullable
as CampaignAnalyticsResponseEntity?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
