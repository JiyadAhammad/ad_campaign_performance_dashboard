// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CampaignDetailsEvent {

 String get campaignId;
/// Create a copy of CampaignDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignDetailsEventCopyWith<CampaignDetailsEvent> get copyWith => _$CampaignDetailsEventCopyWithImpl<CampaignDetailsEvent>(this as CampaignDetailsEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignDetailsEvent&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId));
}


@override
int get hashCode => Object.hash(runtimeType,campaignId);

@override
String toString() {
  return 'CampaignDetailsEvent(campaignId: $campaignId)';
}


}

/// @nodoc
abstract mixin class $CampaignDetailsEventCopyWith<$Res>  {
  factory $CampaignDetailsEventCopyWith(CampaignDetailsEvent value, $Res Function(CampaignDetailsEvent) _then) = _$CampaignDetailsEventCopyWithImpl;
@useResult
$Res call({
 String campaignId
});




}
/// @nodoc
class _$CampaignDetailsEventCopyWithImpl<$Res>
    implements $CampaignDetailsEventCopyWith<$Res> {
  _$CampaignDetailsEventCopyWithImpl(this._self, this._then);

  final CampaignDetailsEvent _self;
  final $Res Function(CampaignDetailsEvent) _then;

/// Create a copy of CampaignDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? campaignId = null,}) {
  return _then(_self.copyWith(
campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CampaignDetailsEvent].
extension CampaignDetailsEventPatterns on CampaignDetailsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadCampaignCompleteData value)?  loadCampaignCompleteData,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadCampaignCompleteData() when loadCampaignCompleteData != null:
return loadCampaignCompleteData(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadCampaignCompleteData value)  loadCampaignCompleteData,}){
final _that = this;
switch (_that) {
case _LoadCampaignCompleteData():
return loadCampaignCompleteData(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadCampaignCompleteData value)?  loadCampaignCompleteData,}){
final _that = this;
switch (_that) {
case _LoadCampaignCompleteData() when loadCampaignCompleteData != null:
return loadCampaignCompleteData(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String campaignId)?  loadCampaignCompleteData,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadCampaignCompleteData() when loadCampaignCompleteData != null:
return loadCampaignCompleteData(_that.campaignId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String campaignId)  loadCampaignCompleteData,}) {final _that = this;
switch (_that) {
case _LoadCampaignCompleteData():
return loadCampaignCompleteData(_that.campaignId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String campaignId)?  loadCampaignCompleteData,}) {final _that = this;
switch (_that) {
case _LoadCampaignCompleteData() when loadCampaignCompleteData != null:
return loadCampaignCompleteData(_that.campaignId);case _:
  return null;

}
}

}

/// @nodoc


class _LoadCampaignCompleteData implements CampaignDetailsEvent {
  const _LoadCampaignCompleteData({required this.campaignId});
  

@override final  String campaignId;

/// Create a copy of CampaignDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadCampaignCompleteDataCopyWith<_LoadCampaignCompleteData> get copyWith => __$LoadCampaignCompleteDataCopyWithImpl<_LoadCampaignCompleteData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadCampaignCompleteData&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId));
}


@override
int get hashCode => Object.hash(runtimeType,campaignId);

@override
String toString() {
  return 'CampaignDetailsEvent.loadCampaignCompleteData(campaignId: $campaignId)';
}


}

/// @nodoc
abstract mixin class _$LoadCampaignCompleteDataCopyWith<$Res> implements $CampaignDetailsEventCopyWith<$Res> {
  factory _$LoadCampaignCompleteDataCopyWith(_LoadCampaignCompleteData value, $Res Function(_LoadCampaignCompleteData) _then) = __$LoadCampaignCompleteDataCopyWithImpl;
@override @useResult
$Res call({
 String campaignId
});




}
/// @nodoc
class __$LoadCampaignCompleteDataCopyWithImpl<$Res>
    implements _$LoadCampaignCompleteDataCopyWith<$Res> {
  __$LoadCampaignCompleteDataCopyWithImpl(this._self, this._then);

  final _LoadCampaignCompleteData _self;
  final $Res Function(_LoadCampaignCompleteData) _then;

/// Create a copy of CampaignDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? campaignId = null,}) {
  return _then(_LoadCampaignCompleteData(
campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$CampaignDetailsState {

// @Default(false) bool isLoading,
// CampaignDetailEntity? campaignDetailsEntity,
// CampaignDetailsHistoryEntity? campaignDetailsHistoryEntity,
// CampaignForecastResponseEntity? campaignForecastEntity,
// String? successMessage,
// @Default(false) bool isError,
// String? errorMessage,
 bool get isLoading; bool get isError; String? get errorMessage; String? get successMessage; CampaignDetailEntity? get campaignDetailsEntity; CampaignDetailsHistoryEntity? get campaignDetailsHistoryEntity; CampaignForecastResponseEntity? get campaignForecastEntity;
/// Create a copy of CampaignDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignDetailsStateCopyWith<CampaignDetailsState> get copyWith => _$CampaignDetailsStateCopyWithImpl<CampaignDetailsState>(this as CampaignDetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignDetailsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&(identical(other.campaignDetailsEntity, campaignDetailsEntity) || other.campaignDetailsEntity == campaignDetailsEntity)&&(identical(other.campaignDetailsHistoryEntity, campaignDetailsHistoryEntity) || other.campaignDetailsHistoryEntity == campaignDetailsHistoryEntity)&&(identical(other.campaignForecastEntity, campaignForecastEntity) || other.campaignForecastEntity == campaignForecastEntity));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isError,errorMessage,successMessage,campaignDetailsEntity,campaignDetailsHistoryEntity,campaignForecastEntity);

@override
String toString() {
  return 'CampaignDetailsState(isLoading: $isLoading, isError: $isError, errorMessage: $errorMessage, successMessage: $successMessage, campaignDetailsEntity: $campaignDetailsEntity, campaignDetailsHistoryEntity: $campaignDetailsHistoryEntity, campaignForecastEntity: $campaignForecastEntity)';
}


}

/// @nodoc
abstract mixin class $CampaignDetailsStateCopyWith<$Res>  {
  factory $CampaignDetailsStateCopyWith(CampaignDetailsState value, $Res Function(CampaignDetailsState) _then) = _$CampaignDetailsStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isError, String? errorMessage, String? successMessage, CampaignDetailEntity? campaignDetailsEntity, CampaignDetailsHistoryEntity? campaignDetailsHistoryEntity, CampaignForecastResponseEntity? campaignForecastEntity
});




}
/// @nodoc
class _$CampaignDetailsStateCopyWithImpl<$Res>
    implements $CampaignDetailsStateCopyWith<$Res> {
  _$CampaignDetailsStateCopyWithImpl(this._self, this._then);

  final CampaignDetailsState _self;
  final $Res Function(CampaignDetailsState) _then;

/// Create a copy of CampaignDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isError = null,Object? errorMessage = freezed,Object? successMessage = freezed,Object? campaignDetailsEntity = freezed,Object? campaignDetailsHistoryEntity = freezed,Object? campaignForecastEntity = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,campaignDetailsEntity: freezed == campaignDetailsEntity ? _self.campaignDetailsEntity : campaignDetailsEntity // ignore: cast_nullable_to_non_nullable
as CampaignDetailEntity?,campaignDetailsHistoryEntity: freezed == campaignDetailsHistoryEntity ? _self.campaignDetailsHistoryEntity : campaignDetailsHistoryEntity // ignore: cast_nullable_to_non_nullable
as CampaignDetailsHistoryEntity?,campaignForecastEntity: freezed == campaignForecastEntity ? _self.campaignForecastEntity : campaignForecastEntity // ignore: cast_nullable_to_non_nullable
as CampaignForecastResponseEntity?,
  ));
}

}


/// Adds pattern-matching-related methods to [CampaignDetailsState].
extension CampaignDetailsStatePatterns on CampaignDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CampaignDetailsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CampaignDetailsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CampaignDetailsState value)  $default,){
final _that = this;
switch (_that) {
case _CampaignDetailsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CampaignDetailsState value)?  $default,){
final _that = this;
switch (_that) {
case _CampaignDetailsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isError,  String? errorMessage,  String? successMessage,  CampaignDetailEntity? campaignDetailsEntity,  CampaignDetailsHistoryEntity? campaignDetailsHistoryEntity,  CampaignForecastResponseEntity? campaignForecastEntity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CampaignDetailsState() when $default != null:
return $default(_that.isLoading,_that.isError,_that.errorMessage,_that.successMessage,_that.campaignDetailsEntity,_that.campaignDetailsHistoryEntity,_that.campaignForecastEntity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isError,  String? errorMessage,  String? successMessage,  CampaignDetailEntity? campaignDetailsEntity,  CampaignDetailsHistoryEntity? campaignDetailsHistoryEntity,  CampaignForecastResponseEntity? campaignForecastEntity)  $default,) {final _that = this;
switch (_that) {
case _CampaignDetailsState():
return $default(_that.isLoading,_that.isError,_that.errorMessage,_that.successMessage,_that.campaignDetailsEntity,_that.campaignDetailsHistoryEntity,_that.campaignForecastEntity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isError,  String? errorMessage,  String? successMessage,  CampaignDetailEntity? campaignDetailsEntity,  CampaignDetailsHistoryEntity? campaignDetailsHistoryEntity,  CampaignForecastResponseEntity? campaignForecastEntity)?  $default,) {final _that = this;
switch (_that) {
case _CampaignDetailsState() when $default != null:
return $default(_that.isLoading,_that.isError,_that.errorMessage,_that.successMessage,_that.campaignDetailsEntity,_that.campaignDetailsHistoryEntity,_that.campaignForecastEntity);case _:
  return null;

}
}

}

/// @nodoc


class _CampaignDetailsState implements CampaignDetailsState {
  const _CampaignDetailsState({this.isLoading = false, this.isError = false, this.errorMessage, this.successMessage, this.campaignDetailsEntity, this.campaignDetailsHistoryEntity, this.campaignForecastEntity});
  

// @Default(false) bool isLoading,
// CampaignDetailEntity? campaignDetailsEntity,
// CampaignDetailsHistoryEntity? campaignDetailsHistoryEntity,
// CampaignForecastResponseEntity? campaignForecastEntity,
// String? successMessage,
// @Default(false) bool isError,
// String? errorMessage,
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isError;
@override final  String? errorMessage;
@override final  String? successMessage;
@override final  CampaignDetailEntity? campaignDetailsEntity;
@override final  CampaignDetailsHistoryEntity? campaignDetailsHistoryEntity;
@override final  CampaignForecastResponseEntity? campaignForecastEntity;

/// Create a copy of CampaignDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignDetailsStateCopyWith<_CampaignDetailsState> get copyWith => __$CampaignDetailsStateCopyWithImpl<_CampaignDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CampaignDetailsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&(identical(other.campaignDetailsEntity, campaignDetailsEntity) || other.campaignDetailsEntity == campaignDetailsEntity)&&(identical(other.campaignDetailsHistoryEntity, campaignDetailsHistoryEntity) || other.campaignDetailsHistoryEntity == campaignDetailsHistoryEntity)&&(identical(other.campaignForecastEntity, campaignForecastEntity) || other.campaignForecastEntity == campaignForecastEntity));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isError,errorMessage,successMessage,campaignDetailsEntity,campaignDetailsHistoryEntity,campaignForecastEntity);

@override
String toString() {
  return 'CampaignDetailsState(isLoading: $isLoading, isError: $isError, errorMessage: $errorMessage, successMessage: $successMessage, campaignDetailsEntity: $campaignDetailsEntity, campaignDetailsHistoryEntity: $campaignDetailsHistoryEntity, campaignForecastEntity: $campaignForecastEntity)';
}


}

/// @nodoc
abstract mixin class _$CampaignDetailsStateCopyWith<$Res> implements $CampaignDetailsStateCopyWith<$Res> {
  factory _$CampaignDetailsStateCopyWith(_CampaignDetailsState value, $Res Function(_CampaignDetailsState) _then) = __$CampaignDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isError, String? errorMessage, String? successMessage, CampaignDetailEntity? campaignDetailsEntity, CampaignDetailsHistoryEntity? campaignDetailsHistoryEntity, CampaignForecastResponseEntity? campaignForecastEntity
});




}
/// @nodoc
class __$CampaignDetailsStateCopyWithImpl<$Res>
    implements _$CampaignDetailsStateCopyWith<$Res> {
  __$CampaignDetailsStateCopyWithImpl(this._self, this._then);

  final _CampaignDetailsState _self;
  final $Res Function(_CampaignDetailsState) _then;

/// Create a copy of CampaignDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isError = null,Object? errorMessage = freezed,Object? successMessage = freezed,Object? campaignDetailsEntity = freezed,Object? campaignDetailsHistoryEntity = freezed,Object? campaignForecastEntity = freezed,}) {
  return _then(_CampaignDetailsState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,campaignDetailsEntity: freezed == campaignDetailsEntity ? _self.campaignDetailsEntity : campaignDetailsEntity // ignore: cast_nullable_to_non_nullable
as CampaignDetailEntity?,campaignDetailsHistoryEntity: freezed == campaignDetailsHistoryEntity ? _self.campaignDetailsHistoryEntity : campaignDetailsHistoryEntity // ignore: cast_nullable_to_non_nullable
as CampaignDetailsHistoryEntity?,campaignForecastEntity: freezed == campaignForecastEntity ? _self.campaignForecastEntity : campaignForecastEntity // ignore: cast_nullable_to_non_nullable
as CampaignForecastResponseEntity?,
  ));
}


}

// dart format on
