// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anomaly_alert_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AnomalyAlertEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnomalyAlertEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AnomalyAlertEvent()';
}


}

/// @nodoc
class $AnomalyAlertEventCopyWith<$Res>  {
$AnomalyAlertEventCopyWith(AnomalyAlertEvent _, $Res Function(AnomalyAlertEvent) __);
}


/// Adds pattern-matching-related methods to [AnomalyAlertEvent].
extension AnomalyAlertEventPatterns on AnomalyAlertEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetLiveMetricAlert value)?  getLiveMetricAlert,TResult Function( _GetAnomalyDetect value)?  getAnomalyDetect,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetLiveMetricAlert() when getLiveMetricAlert != null:
return getLiveMetricAlert(_that);case _GetAnomalyDetect() when getAnomalyDetect != null:
return getAnomalyDetect(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetLiveMetricAlert value)  getLiveMetricAlert,required TResult Function( _GetAnomalyDetect value)  getAnomalyDetect,}){
final _that = this;
switch (_that) {
case _GetLiveMetricAlert():
return getLiveMetricAlert(_that);case _GetAnomalyDetect():
return getAnomalyDetect(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetLiveMetricAlert value)?  getLiveMetricAlert,TResult? Function( _GetAnomalyDetect value)?  getAnomalyDetect,}){
final _that = this;
switch (_that) {
case _GetLiveMetricAlert() when getLiveMetricAlert != null:
return getLiveMetricAlert(_that);case _GetAnomalyDetect() when getAnomalyDetect != null:
return getAnomalyDetect(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getLiveMetricAlert,TResult Function( bool isLoading)?  getAnomalyDetect,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetLiveMetricAlert() when getLiveMetricAlert != null:
return getLiveMetricAlert();case _GetAnomalyDetect() when getAnomalyDetect != null:
return getAnomalyDetect(_that.isLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getLiveMetricAlert,required TResult Function( bool isLoading)  getAnomalyDetect,}) {final _that = this;
switch (_that) {
case _GetLiveMetricAlert():
return getLiveMetricAlert();case _GetAnomalyDetect():
return getAnomalyDetect(_that.isLoading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getLiveMetricAlert,TResult? Function( bool isLoading)?  getAnomalyDetect,}) {final _that = this;
switch (_that) {
case _GetLiveMetricAlert() when getLiveMetricAlert != null:
return getLiveMetricAlert();case _GetAnomalyDetect() when getAnomalyDetect != null:
return getAnomalyDetect(_that.isLoading);case _:
  return null;

}
}

}

/// @nodoc


class _GetLiveMetricAlert implements AnomalyAlertEvent {
  const _GetLiveMetricAlert();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetLiveMetricAlert);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AnomalyAlertEvent.getLiveMetricAlert()';
}


}




/// @nodoc


class _GetAnomalyDetect implements AnomalyAlertEvent {
  const _GetAnomalyDetect({required this.isLoading});
  

 final  bool isLoading;

/// Create a copy of AnomalyAlertEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAnomalyDetectCopyWith<_GetAnomalyDetect> get copyWith => __$GetAnomalyDetectCopyWithImpl<_GetAnomalyDetect>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAnomalyDetect&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading);

@override
String toString() {
  return 'AnomalyAlertEvent.getAnomalyDetect(isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$GetAnomalyDetectCopyWith<$Res> implements $AnomalyAlertEventCopyWith<$Res> {
  factory _$GetAnomalyDetectCopyWith(_GetAnomalyDetect value, $Res Function(_GetAnomalyDetect) _then) = __$GetAnomalyDetectCopyWithImpl;
@useResult
$Res call({
 bool isLoading
});




}
/// @nodoc
class __$GetAnomalyDetectCopyWithImpl<$Res>
    implements _$GetAnomalyDetectCopyWith<$Res> {
  __$GetAnomalyDetectCopyWithImpl(this._self, this._then);

  final _GetAnomalyDetect _self;
  final $Res Function(_GetAnomalyDetect) _then;

/// Create a copy of AnomalyAlertEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isLoading = null,}) {
  return _then(_GetAnomalyDetect(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$AnomalyAlertState {

 bool get isLoading; List<LiveCampaignMetricsEntity> get liveCampaignMetricsEntity; List<AnomalyEntity> get anomalyEntity; String? get successMessage; bool get isError; String? get errorMessage;
/// Create a copy of AnomalyAlertState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnomalyAlertStateCopyWith<AnomalyAlertState> get copyWith => _$AnomalyAlertStateCopyWithImpl<AnomalyAlertState>(this as AnomalyAlertState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnomalyAlertState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.liveCampaignMetricsEntity, liveCampaignMetricsEntity)&&const DeepCollectionEquality().equals(other.anomalyEntity, anomalyEntity)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(liveCampaignMetricsEntity),const DeepCollectionEquality().hash(anomalyEntity),successMessage,isError,errorMessage);

@override
String toString() {
  return 'AnomalyAlertState(isLoading: $isLoading, liveCampaignMetricsEntity: $liveCampaignMetricsEntity, anomalyEntity: $anomalyEntity, successMessage: $successMessage, isError: $isError, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $AnomalyAlertStateCopyWith<$Res>  {
  factory $AnomalyAlertStateCopyWith(AnomalyAlertState value, $Res Function(AnomalyAlertState) _then) = _$AnomalyAlertStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<LiveCampaignMetricsEntity> liveCampaignMetricsEntity, List<AnomalyEntity> anomalyEntity, String? successMessage, bool isError, String? errorMessage
});




}
/// @nodoc
class _$AnomalyAlertStateCopyWithImpl<$Res>
    implements $AnomalyAlertStateCopyWith<$Res> {
  _$AnomalyAlertStateCopyWithImpl(this._self, this._then);

  final AnomalyAlertState _self;
  final $Res Function(AnomalyAlertState) _then;

/// Create a copy of AnomalyAlertState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? liveCampaignMetricsEntity = null,Object? anomalyEntity = null,Object? successMessage = freezed,Object? isError = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,liveCampaignMetricsEntity: null == liveCampaignMetricsEntity ? _self.liveCampaignMetricsEntity : liveCampaignMetricsEntity // ignore: cast_nullable_to_non_nullable
as List<LiveCampaignMetricsEntity>,anomalyEntity: null == anomalyEntity ? _self.anomalyEntity : anomalyEntity // ignore: cast_nullable_to_non_nullable
as List<AnomalyEntity>,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AnomalyAlertState].
extension AnomalyAlertStatePatterns on AnomalyAlertState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnomalyAlertState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnomalyAlertState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnomalyAlertState value)  $default,){
final _that = this;
switch (_that) {
case _AnomalyAlertState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnomalyAlertState value)?  $default,){
final _that = this;
switch (_that) {
case _AnomalyAlertState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<LiveCampaignMetricsEntity> liveCampaignMetricsEntity,  List<AnomalyEntity> anomalyEntity,  String? successMessage,  bool isError,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnomalyAlertState() when $default != null:
return $default(_that.isLoading,_that.liveCampaignMetricsEntity,_that.anomalyEntity,_that.successMessage,_that.isError,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<LiveCampaignMetricsEntity> liveCampaignMetricsEntity,  List<AnomalyEntity> anomalyEntity,  String? successMessage,  bool isError,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _AnomalyAlertState():
return $default(_that.isLoading,_that.liveCampaignMetricsEntity,_that.anomalyEntity,_that.successMessage,_that.isError,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<LiveCampaignMetricsEntity> liveCampaignMetricsEntity,  List<AnomalyEntity> anomalyEntity,  String? successMessage,  bool isError,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _AnomalyAlertState() when $default != null:
return $default(_that.isLoading,_that.liveCampaignMetricsEntity,_that.anomalyEntity,_that.successMessage,_that.isError,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _AnomalyAlertState implements AnomalyAlertState {
  const _AnomalyAlertState({this.isLoading = false, final  List<LiveCampaignMetricsEntity> liveCampaignMetricsEntity = const <LiveCampaignMetricsEntity>[], final  List<AnomalyEntity> anomalyEntity = const <AnomalyEntity>[], this.successMessage, this.isError = false, this.errorMessage}): _liveCampaignMetricsEntity = liveCampaignMetricsEntity,_anomalyEntity = anomalyEntity;
  

@override@JsonKey() final  bool isLoading;
 final  List<LiveCampaignMetricsEntity> _liveCampaignMetricsEntity;
@override@JsonKey() List<LiveCampaignMetricsEntity> get liveCampaignMetricsEntity {
  if (_liveCampaignMetricsEntity is EqualUnmodifiableListView) return _liveCampaignMetricsEntity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_liveCampaignMetricsEntity);
}

 final  List<AnomalyEntity> _anomalyEntity;
@override@JsonKey() List<AnomalyEntity> get anomalyEntity {
  if (_anomalyEntity is EqualUnmodifiableListView) return _anomalyEntity;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_anomalyEntity);
}

@override final  String? successMessage;
@override@JsonKey() final  bool isError;
@override final  String? errorMessage;

/// Create a copy of AnomalyAlertState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnomalyAlertStateCopyWith<_AnomalyAlertState> get copyWith => __$AnomalyAlertStateCopyWithImpl<_AnomalyAlertState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnomalyAlertState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._liveCampaignMetricsEntity, _liveCampaignMetricsEntity)&&const DeepCollectionEquality().equals(other._anomalyEntity, _anomalyEntity)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_liveCampaignMetricsEntity),const DeepCollectionEquality().hash(_anomalyEntity),successMessage,isError,errorMessage);

@override
String toString() {
  return 'AnomalyAlertState(isLoading: $isLoading, liveCampaignMetricsEntity: $liveCampaignMetricsEntity, anomalyEntity: $anomalyEntity, successMessage: $successMessage, isError: $isError, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$AnomalyAlertStateCopyWith<$Res> implements $AnomalyAlertStateCopyWith<$Res> {
  factory _$AnomalyAlertStateCopyWith(_AnomalyAlertState value, $Res Function(_AnomalyAlertState) _then) = __$AnomalyAlertStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<LiveCampaignMetricsEntity> liveCampaignMetricsEntity, List<AnomalyEntity> anomalyEntity, String? successMessage, bool isError, String? errorMessage
});




}
/// @nodoc
class __$AnomalyAlertStateCopyWithImpl<$Res>
    implements _$AnomalyAlertStateCopyWith<$Res> {
  __$AnomalyAlertStateCopyWithImpl(this._self, this._then);

  final _AnomalyAlertState _self;
  final $Res Function(_AnomalyAlertState) _then;

/// Create a copy of AnomalyAlertState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? liveCampaignMetricsEntity = null,Object? anomalyEntity = null,Object? successMessage = freezed,Object? isError = null,Object? errorMessage = freezed,}) {
  return _then(_AnomalyAlertState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,liveCampaignMetricsEntity: null == liveCampaignMetricsEntity ? _self._liveCampaignMetricsEntity : liveCampaignMetricsEntity // ignore: cast_nullable_to_non_nullable
as List<LiveCampaignMetricsEntity>,anomalyEntity: null == anomalyEntity ? _self._anomalyEntity : anomalyEntity // ignore: cast_nullable_to_non_nullable
as List<AnomalyEntity>,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
