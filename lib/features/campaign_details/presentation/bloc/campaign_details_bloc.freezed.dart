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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetCampaignDetails value)?  getCampaignDetails,TResult Function( _GetCampaignDetailsHistory value)?  getCampaignDetailsHistory,TResult Function( _GetCampaignForecast value)?  getCampaignForecast,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetCampaignDetails() when getCampaignDetails != null:
return getCampaignDetails(_that);case _GetCampaignDetailsHistory() when getCampaignDetailsHistory != null:
return getCampaignDetailsHistory(_that);case _GetCampaignForecast() when getCampaignForecast != null:
return getCampaignForecast(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetCampaignDetails value)  getCampaignDetails,required TResult Function( _GetCampaignDetailsHistory value)  getCampaignDetailsHistory,required TResult Function( _GetCampaignForecast value)  getCampaignForecast,}){
final _that = this;
switch (_that) {
case _GetCampaignDetails():
return getCampaignDetails(_that);case _GetCampaignDetailsHistory():
return getCampaignDetailsHistory(_that);case _GetCampaignForecast():
return getCampaignForecast(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetCampaignDetails value)?  getCampaignDetails,TResult? Function( _GetCampaignDetailsHistory value)?  getCampaignDetailsHistory,TResult? Function( _GetCampaignForecast value)?  getCampaignForecast,}){
final _that = this;
switch (_that) {
case _GetCampaignDetails() when getCampaignDetails != null:
return getCampaignDetails(_that);case _GetCampaignDetailsHistory() when getCampaignDetailsHistory != null:
return getCampaignDetailsHistory(_that);case _GetCampaignForecast() when getCampaignForecast != null:
return getCampaignForecast(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String campaignId)?  getCampaignDetails,TResult Function( String campaignId)?  getCampaignDetailsHistory,TResult Function( String campaignId,  int horizonDays,  List<CampaignHistoryEntity> campaignHistory)?  getCampaignForecast,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetCampaignDetails() when getCampaignDetails != null:
return getCampaignDetails(_that.campaignId);case _GetCampaignDetailsHistory() when getCampaignDetailsHistory != null:
return getCampaignDetailsHistory(_that.campaignId);case _GetCampaignForecast() when getCampaignForecast != null:
return getCampaignForecast(_that.campaignId,_that.horizonDays,_that.campaignHistory);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String campaignId)  getCampaignDetails,required TResult Function( String campaignId)  getCampaignDetailsHistory,required TResult Function( String campaignId,  int horizonDays,  List<CampaignHistoryEntity> campaignHistory)  getCampaignForecast,}) {final _that = this;
switch (_that) {
case _GetCampaignDetails():
return getCampaignDetails(_that.campaignId);case _GetCampaignDetailsHistory():
return getCampaignDetailsHistory(_that.campaignId);case _GetCampaignForecast():
return getCampaignForecast(_that.campaignId,_that.horizonDays,_that.campaignHistory);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String campaignId)?  getCampaignDetails,TResult? Function( String campaignId)?  getCampaignDetailsHistory,TResult? Function( String campaignId,  int horizonDays,  List<CampaignHistoryEntity> campaignHistory)?  getCampaignForecast,}) {final _that = this;
switch (_that) {
case _GetCampaignDetails() when getCampaignDetails != null:
return getCampaignDetails(_that.campaignId);case _GetCampaignDetailsHistory() when getCampaignDetailsHistory != null:
return getCampaignDetailsHistory(_that.campaignId);case _GetCampaignForecast() when getCampaignForecast != null:
return getCampaignForecast(_that.campaignId,_that.horizonDays,_that.campaignHistory);case _:
  return null;

}
}

}

/// @nodoc


class _GetCampaignDetails implements CampaignDetailsEvent {
  const _GetCampaignDetails({required this.campaignId});
  

@override final  String campaignId;

/// Create a copy of CampaignDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCampaignDetailsCopyWith<_GetCampaignDetails> get copyWith => __$GetCampaignDetailsCopyWithImpl<_GetCampaignDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCampaignDetails&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId));
}


@override
int get hashCode => Object.hash(runtimeType,campaignId);

@override
String toString() {
  return 'CampaignDetailsEvent.getCampaignDetails(campaignId: $campaignId)';
}


}

/// @nodoc
abstract mixin class _$GetCampaignDetailsCopyWith<$Res> implements $CampaignDetailsEventCopyWith<$Res> {
  factory _$GetCampaignDetailsCopyWith(_GetCampaignDetails value, $Res Function(_GetCampaignDetails) _then) = __$GetCampaignDetailsCopyWithImpl;
@override @useResult
$Res call({
 String campaignId
});




}
/// @nodoc
class __$GetCampaignDetailsCopyWithImpl<$Res>
    implements _$GetCampaignDetailsCopyWith<$Res> {
  __$GetCampaignDetailsCopyWithImpl(this._self, this._then);

  final _GetCampaignDetails _self;
  final $Res Function(_GetCampaignDetails) _then;

/// Create a copy of CampaignDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? campaignId = null,}) {
  return _then(_GetCampaignDetails(
campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetCampaignDetailsHistory implements CampaignDetailsEvent {
  const _GetCampaignDetailsHistory({required this.campaignId});
  

@override final  String campaignId;

/// Create a copy of CampaignDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCampaignDetailsHistoryCopyWith<_GetCampaignDetailsHistory> get copyWith => __$GetCampaignDetailsHistoryCopyWithImpl<_GetCampaignDetailsHistory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCampaignDetailsHistory&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId));
}


@override
int get hashCode => Object.hash(runtimeType,campaignId);

@override
String toString() {
  return 'CampaignDetailsEvent.getCampaignDetailsHistory(campaignId: $campaignId)';
}


}

/// @nodoc
abstract mixin class _$GetCampaignDetailsHistoryCopyWith<$Res> implements $CampaignDetailsEventCopyWith<$Res> {
  factory _$GetCampaignDetailsHistoryCopyWith(_GetCampaignDetailsHistory value, $Res Function(_GetCampaignDetailsHistory) _then) = __$GetCampaignDetailsHistoryCopyWithImpl;
@override @useResult
$Res call({
 String campaignId
});




}
/// @nodoc
class __$GetCampaignDetailsHistoryCopyWithImpl<$Res>
    implements _$GetCampaignDetailsHistoryCopyWith<$Res> {
  __$GetCampaignDetailsHistoryCopyWithImpl(this._self, this._then);

  final _GetCampaignDetailsHistory _self;
  final $Res Function(_GetCampaignDetailsHistory) _then;

/// Create a copy of CampaignDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? campaignId = null,}) {
  return _then(_GetCampaignDetailsHistory(
campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GetCampaignForecast implements CampaignDetailsEvent {
  const _GetCampaignForecast({required this.campaignId, required this.horizonDays, required final  List<CampaignHistoryEntity> campaignHistory}): _campaignHistory = campaignHistory;
  

@override final  String campaignId;
 final  int horizonDays;
 final  List<CampaignHistoryEntity> _campaignHistory;
 List<CampaignHistoryEntity> get campaignHistory {
  if (_campaignHistory is EqualUnmodifiableListView) return _campaignHistory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_campaignHistory);
}


/// Create a copy of CampaignDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCampaignForecastCopyWith<_GetCampaignForecast> get copyWith => __$GetCampaignForecastCopyWithImpl<_GetCampaignForecast>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCampaignForecast&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.horizonDays, horizonDays) || other.horizonDays == horizonDays)&&const DeepCollectionEquality().equals(other._campaignHistory, _campaignHistory));
}


@override
int get hashCode => Object.hash(runtimeType,campaignId,horizonDays,const DeepCollectionEquality().hash(_campaignHistory));

@override
String toString() {
  return 'CampaignDetailsEvent.getCampaignForecast(campaignId: $campaignId, horizonDays: $horizonDays, campaignHistory: $campaignHistory)';
}


}

/// @nodoc
abstract mixin class _$GetCampaignForecastCopyWith<$Res> implements $CampaignDetailsEventCopyWith<$Res> {
  factory _$GetCampaignForecastCopyWith(_GetCampaignForecast value, $Res Function(_GetCampaignForecast) _then) = __$GetCampaignForecastCopyWithImpl;
@override @useResult
$Res call({
 String campaignId, int horizonDays, List<CampaignHistoryEntity> campaignHistory
});




}
/// @nodoc
class __$GetCampaignForecastCopyWithImpl<$Res>
    implements _$GetCampaignForecastCopyWith<$Res> {
  __$GetCampaignForecastCopyWithImpl(this._self, this._then);

  final _GetCampaignForecast _self;
  final $Res Function(_GetCampaignForecast) _then;

/// Create a copy of CampaignDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? campaignId = null,Object? horizonDays = null,Object? campaignHistory = null,}) {
  return _then(_GetCampaignForecast(
campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,horizonDays: null == horizonDays ? _self.horizonDays : horizonDays // ignore: cast_nullable_to_non_nullable
as int,campaignHistory: null == campaignHistory ? _self._campaignHistory : campaignHistory // ignore: cast_nullable_to_non_nullable
as List<CampaignHistoryEntity>,
  ));
}


}

/// @nodoc
mixin _$CampaignDetailsState {

 bool get isLoading; CampaignDetailEntity? get campaignDetailsEntity; CampaignDetailsHistoryEntity? get campaignDetailsHistoryEntity; CampaignForecastResponseEntity? get campaignForecastEntity; String? get successMessage; bool get isError; String? get errorMessage;
/// Create a copy of CampaignDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignDetailsStateCopyWith<CampaignDetailsState> get copyWith => _$CampaignDetailsStateCopyWithImpl<CampaignDetailsState>(this as CampaignDetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignDetailsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.campaignDetailsEntity, campaignDetailsEntity) || other.campaignDetailsEntity == campaignDetailsEntity)&&(identical(other.campaignDetailsHistoryEntity, campaignDetailsHistoryEntity) || other.campaignDetailsHistoryEntity == campaignDetailsHistoryEntity)&&(identical(other.campaignForecastEntity, campaignForecastEntity) || other.campaignForecastEntity == campaignForecastEntity)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,campaignDetailsEntity,campaignDetailsHistoryEntity,campaignForecastEntity,successMessage,isError,errorMessage);

@override
String toString() {
  return 'CampaignDetailsState(isLoading: $isLoading, campaignDetailsEntity: $campaignDetailsEntity, campaignDetailsHistoryEntity: $campaignDetailsHistoryEntity, campaignForecastEntity: $campaignForecastEntity, successMessage: $successMessage, isError: $isError, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $CampaignDetailsStateCopyWith<$Res>  {
  factory $CampaignDetailsStateCopyWith(CampaignDetailsState value, $Res Function(CampaignDetailsState) _then) = _$CampaignDetailsStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, CampaignDetailEntity? campaignDetailsEntity, CampaignDetailsHistoryEntity? campaignDetailsHistoryEntity, CampaignForecastResponseEntity? campaignForecastEntity, String? successMessage, bool isError, String? errorMessage
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
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? campaignDetailsEntity = freezed,Object? campaignDetailsHistoryEntity = freezed,Object? campaignForecastEntity = freezed,Object? successMessage = freezed,Object? isError = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,campaignDetailsEntity: freezed == campaignDetailsEntity ? _self.campaignDetailsEntity : campaignDetailsEntity // ignore: cast_nullable_to_non_nullable
as CampaignDetailEntity?,campaignDetailsHistoryEntity: freezed == campaignDetailsHistoryEntity ? _self.campaignDetailsHistoryEntity : campaignDetailsHistoryEntity // ignore: cast_nullable_to_non_nullable
as CampaignDetailsHistoryEntity?,campaignForecastEntity: freezed == campaignForecastEntity ? _self.campaignForecastEntity : campaignForecastEntity // ignore: cast_nullable_to_non_nullable
as CampaignForecastResponseEntity?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  CampaignDetailEntity? campaignDetailsEntity,  CampaignDetailsHistoryEntity? campaignDetailsHistoryEntity,  CampaignForecastResponseEntity? campaignForecastEntity,  String? successMessage,  bool isError,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CampaignDetailsState() when $default != null:
return $default(_that.isLoading,_that.campaignDetailsEntity,_that.campaignDetailsHistoryEntity,_that.campaignForecastEntity,_that.successMessage,_that.isError,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  CampaignDetailEntity? campaignDetailsEntity,  CampaignDetailsHistoryEntity? campaignDetailsHistoryEntity,  CampaignForecastResponseEntity? campaignForecastEntity,  String? successMessage,  bool isError,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _CampaignDetailsState():
return $default(_that.isLoading,_that.campaignDetailsEntity,_that.campaignDetailsHistoryEntity,_that.campaignForecastEntity,_that.successMessage,_that.isError,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  CampaignDetailEntity? campaignDetailsEntity,  CampaignDetailsHistoryEntity? campaignDetailsHistoryEntity,  CampaignForecastResponseEntity? campaignForecastEntity,  String? successMessage,  bool isError,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _CampaignDetailsState() when $default != null:
return $default(_that.isLoading,_that.campaignDetailsEntity,_that.campaignDetailsHistoryEntity,_that.campaignForecastEntity,_that.successMessage,_that.isError,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _CampaignDetailsState implements CampaignDetailsState {
  const _CampaignDetailsState({this.isLoading = false, this.campaignDetailsEntity, this.campaignDetailsHistoryEntity, this.campaignForecastEntity, this.successMessage, this.isError = false, this.errorMessage});
  

@override@JsonKey() final  bool isLoading;
@override final  CampaignDetailEntity? campaignDetailsEntity;
@override final  CampaignDetailsHistoryEntity? campaignDetailsHistoryEntity;
@override final  CampaignForecastResponseEntity? campaignForecastEntity;
@override final  String? successMessage;
@override@JsonKey() final  bool isError;
@override final  String? errorMessage;

/// Create a copy of CampaignDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignDetailsStateCopyWith<_CampaignDetailsState> get copyWith => __$CampaignDetailsStateCopyWithImpl<_CampaignDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CampaignDetailsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.campaignDetailsEntity, campaignDetailsEntity) || other.campaignDetailsEntity == campaignDetailsEntity)&&(identical(other.campaignDetailsHistoryEntity, campaignDetailsHistoryEntity) || other.campaignDetailsHistoryEntity == campaignDetailsHistoryEntity)&&(identical(other.campaignForecastEntity, campaignForecastEntity) || other.campaignForecastEntity == campaignForecastEntity)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,campaignDetailsEntity,campaignDetailsHistoryEntity,campaignForecastEntity,successMessage,isError,errorMessage);

@override
String toString() {
  return 'CampaignDetailsState(isLoading: $isLoading, campaignDetailsEntity: $campaignDetailsEntity, campaignDetailsHistoryEntity: $campaignDetailsHistoryEntity, campaignForecastEntity: $campaignForecastEntity, successMessage: $successMessage, isError: $isError, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$CampaignDetailsStateCopyWith<$Res> implements $CampaignDetailsStateCopyWith<$Res> {
  factory _$CampaignDetailsStateCopyWith(_CampaignDetailsState value, $Res Function(_CampaignDetailsState) _then) = __$CampaignDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, CampaignDetailEntity? campaignDetailsEntity, CampaignDetailsHistoryEntity? campaignDetailsHistoryEntity, CampaignForecastResponseEntity? campaignForecastEntity, String? successMessage, bool isError, String? errorMessage
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
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? campaignDetailsEntity = freezed,Object? campaignDetailsHistoryEntity = freezed,Object? campaignForecastEntity = freezed,Object? successMessage = freezed,Object? isError = null,Object? errorMessage = freezed,}) {
  return _then(_CampaignDetailsState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,campaignDetailsEntity: freezed == campaignDetailsEntity ? _self.campaignDetailsEntity : campaignDetailsEntity // ignore: cast_nullable_to_non_nullable
as CampaignDetailEntity?,campaignDetailsHistoryEntity: freezed == campaignDetailsHistoryEntity ? _self.campaignDetailsHistoryEntity : campaignDetailsHistoryEntity // ignore: cast_nullable_to_non_nullable
as CampaignDetailsHistoryEntity?,campaignForecastEntity: freezed == campaignForecastEntity ? _self.campaignForecastEntity : campaignForecastEntity // ignore: cast_nullable_to_non_nullable
as CampaignForecastResponseEntity?,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
