// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'live_metric_alert_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LiveMetricAlertEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LiveMetricAlertEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LiveMetricAlertEvent()';
}


}

/// @nodoc
class $LiveMetricAlertEventCopyWith<$Res>  {
$LiveMetricAlertEventCopyWith(LiveMetricAlertEvent _, $Res Function(LiveMetricAlertEvent) __);
}


/// Adds pattern-matching-related methods to [LiveMetricAlertEvent].
extension LiveMetricAlertEventPatterns on LiveMetricAlertEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetLiveMetricAlert value)?  getLiveMetricAlert,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetLiveMetricAlert() when getLiveMetricAlert != null:
return getLiveMetricAlert(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetLiveMetricAlert value)  getLiveMetricAlert,}){
final _that = this;
switch (_that) {
case _GetLiveMetricAlert():
return getLiveMetricAlert(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetLiveMetricAlert value)?  getLiveMetricAlert,}){
final _that = this;
switch (_that) {
case _GetLiveMetricAlert() when getLiveMetricAlert != null:
return getLiveMetricAlert(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getLiveMetricAlert,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetLiveMetricAlert() when getLiveMetricAlert != null:
return getLiveMetricAlert();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getLiveMetricAlert,}) {final _that = this;
switch (_that) {
case _GetLiveMetricAlert():
return getLiveMetricAlert();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getLiveMetricAlert,}) {final _that = this;
switch (_that) {
case _GetLiveMetricAlert() when getLiveMetricAlert != null:
return getLiveMetricAlert();case _:
  return null;

}
}

}

/// @nodoc


class _GetLiveMetricAlert implements LiveMetricAlertEvent {
  const _GetLiveMetricAlert();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetLiveMetricAlert);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LiveMetricAlertEvent.getLiveMetricAlert()';
}


}




/// @nodoc
mixin _$LiveMetricAlertState {

 bool get isLoading; List<LiveCampaignMetricsEntity> get liveCampaignMetricsEntity; String? get successMessage; bool get isError; String? get errorMessage;
/// Create a copy of LiveMetricAlertState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LiveMetricAlertStateCopyWith<LiveMetricAlertState> get copyWith => _$LiveMetricAlertStateCopyWithImpl<LiveMetricAlertState>(this as LiveMetricAlertState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LiveMetricAlertState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.liveCampaignMetricsEntity, liveCampaignMetricsEntity)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(liveCampaignMetricsEntity),successMessage,isError,errorMessage);

@override
String toString() {
  return 'LiveMetricAlertState(isLoading: $isLoading, liveCampaignMetricsEntity: $liveCampaignMetricsEntity, successMessage: $successMessage, isError: $isError, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $LiveMetricAlertStateCopyWith<$Res>  {
  factory $LiveMetricAlertStateCopyWith(LiveMetricAlertState value, $Res Function(LiveMetricAlertState) _then) = _$LiveMetricAlertStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<LiveCampaignMetricsEntity> liveCampaignMetricsEntity, String? successMessage, bool isError, String? errorMessage
});




}
/// @nodoc
class _$LiveMetricAlertStateCopyWithImpl<$Res>
    implements $LiveMetricAlertStateCopyWith<$Res> {
  _$LiveMetricAlertStateCopyWithImpl(this._self, this._then);

  final LiveMetricAlertState _self;
  final $Res Function(LiveMetricAlertState) _then;

/// Create a copy of LiveMetricAlertState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? liveCampaignMetricsEntity = null,Object? successMessage = freezed,Object? isError = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,liveCampaignMetricsEntity: null == liveCampaignMetricsEntity ? _self.liveCampaignMetricsEntity : liveCampaignMetricsEntity // ignore: cast_nullable_to_non_nullable
as List<LiveCampaignMetricsEntity>,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LiveMetricAlertState].
extension LiveMetricAlertStatePatterns on LiveMetricAlertState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LiveMetricAlertState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LiveMetricAlertState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LiveMetricAlertState value)  $default,){
final _that = this;
switch (_that) {
case _LiveMetricAlertState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LiveMetricAlertState value)?  $default,){
final _that = this;
switch (_that) {
case _LiveMetricAlertState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<LiveCampaignMetricsEntity> liveCampaignMetricsEntity,  String? successMessage,  bool isError,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LiveMetricAlertState() when $default != null:
return $default(_that.isLoading,_that.liveCampaignMetricsEntity,_that.successMessage,_that.isError,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<LiveCampaignMetricsEntity> liveCampaignMetricsEntity,  String? successMessage,  bool isError,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _LiveMetricAlertState():
return $default(_that.isLoading,_that.liveCampaignMetricsEntity,_that.successMessage,_that.isError,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<LiveCampaignMetricsEntity> liveCampaignMetricsEntity,  String? successMessage,  bool isError,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _LiveMetricAlertState() when $default != null:
return $default(_that.isLoading,_that.liveCampaignMetricsEntity,_that.successMessage,_that.isError,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _LiveMetricAlertState implements LiveMetricAlertState {
  const _LiveMetricAlertState({this.isLoading = false, final  List<LiveCampaignMetricsEntity> liveCampaignMetricsEntity = const <LiveCampaignMetricsEntity>[], this.successMessage, this.isError = false, this.errorMessage}): _liveCampaignMetricsEntity = liveCampaignMetricsEntity;
  

@override@JsonKey() final  bool isLoading;
 final  List<LiveCampaignMetricsEntity> _liveCampaignMetricsEntity;
@override@JsonKey() List<LiveCampaignMetricsEntity> get liveCampaignMetricsEntity {
  if (_liveCampaignMetricsEntity is EqualUnmodifiableListView) return _liveCampaignMetricsEntity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_liveCampaignMetricsEntity);
}

@override final  String? successMessage;
@override@JsonKey() final  bool isError;
@override final  String? errorMessage;

/// Create a copy of LiveMetricAlertState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LiveMetricAlertStateCopyWith<_LiveMetricAlertState> get copyWith => __$LiveMetricAlertStateCopyWithImpl<_LiveMetricAlertState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LiveMetricAlertState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._liveCampaignMetricsEntity, _liveCampaignMetricsEntity)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_liveCampaignMetricsEntity),successMessage,isError,errorMessage);

@override
String toString() {
  return 'LiveMetricAlertState(isLoading: $isLoading, liveCampaignMetricsEntity: $liveCampaignMetricsEntity, successMessage: $successMessage, isError: $isError, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$LiveMetricAlertStateCopyWith<$Res> implements $LiveMetricAlertStateCopyWith<$Res> {
  factory _$LiveMetricAlertStateCopyWith(_LiveMetricAlertState value, $Res Function(_LiveMetricAlertState) _then) = __$LiveMetricAlertStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<LiveCampaignMetricsEntity> liveCampaignMetricsEntity, String? successMessage, bool isError, String? errorMessage
});




}
/// @nodoc
class __$LiveMetricAlertStateCopyWithImpl<$Res>
    implements _$LiveMetricAlertStateCopyWith<$Res> {
  __$LiveMetricAlertStateCopyWithImpl(this._self, this._then);

  final _LiveMetricAlertState _self;
  final $Res Function(_LiveMetricAlertState) _then;

/// Create a copy of LiveMetricAlertState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? liveCampaignMetricsEntity = null,Object? successMessage = freezed,Object? isError = null,Object? errorMessage = freezed,}) {
  return _then(_LiveMetricAlertState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,liveCampaignMetricsEntity: null == liveCampaignMetricsEntity ? _self._liveCampaignMetricsEntity : liveCampaignMetricsEntity // ignore: cast_nullable_to_non_nullable
as List<LiveCampaignMetricsEntity>,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
