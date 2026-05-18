// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'live_campaign_alert.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LiveCampaignMetricsResponseModel {

 String get timestamp; List<LiveCampaignMetricsModel> get campaigns;
/// Create a copy of LiveCampaignMetricsResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LiveCampaignMetricsResponseModelCopyWith<LiveCampaignMetricsResponseModel> get copyWith => _$LiveCampaignMetricsResponseModelCopyWithImpl<LiveCampaignMetricsResponseModel>(this as LiveCampaignMetricsResponseModel, _$identity);

  /// Serializes this LiveCampaignMetricsResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LiveCampaignMetricsResponseModel&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&const DeepCollectionEquality().equals(other.campaigns, campaigns));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,const DeepCollectionEquality().hash(campaigns));

@override
String toString() {
  return 'LiveCampaignMetricsResponseModel(timestamp: $timestamp, campaigns: $campaigns)';
}


}

/// @nodoc
abstract mixin class $LiveCampaignMetricsResponseModelCopyWith<$Res>  {
  factory $LiveCampaignMetricsResponseModelCopyWith(LiveCampaignMetricsResponseModel value, $Res Function(LiveCampaignMetricsResponseModel) _then) = _$LiveCampaignMetricsResponseModelCopyWithImpl;
@useResult
$Res call({
 String timestamp, List<LiveCampaignMetricsModel> campaigns
});




}
/// @nodoc
class _$LiveCampaignMetricsResponseModelCopyWithImpl<$Res>
    implements $LiveCampaignMetricsResponseModelCopyWith<$Res> {
  _$LiveCampaignMetricsResponseModelCopyWithImpl(this._self, this._then);

  final LiveCampaignMetricsResponseModel _self;
  final $Res Function(LiveCampaignMetricsResponseModel) _then;

/// Create a copy of LiveCampaignMetricsResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timestamp = null,Object? campaigns = null,}) {
  return _then(_self.copyWith(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,campaigns: null == campaigns ? _self.campaigns : campaigns // ignore: cast_nullable_to_non_nullable
as List<LiveCampaignMetricsModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [LiveCampaignMetricsResponseModel].
extension LiveCampaignMetricsResponseModelPatterns on LiveCampaignMetricsResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LiveCampaignMetricsResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LiveCampaignMetricsResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LiveCampaignMetricsResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _LiveCampaignMetricsResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LiveCampaignMetricsResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _LiveCampaignMetricsResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String timestamp,  List<LiveCampaignMetricsModel> campaigns)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LiveCampaignMetricsResponseModel() when $default != null:
return $default(_that.timestamp,_that.campaigns);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String timestamp,  List<LiveCampaignMetricsModel> campaigns)  $default,) {final _that = this;
switch (_that) {
case _LiveCampaignMetricsResponseModel():
return $default(_that.timestamp,_that.campaigns);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String timestamp,  List<LiveCampaignMetricsModel> campaigns)?  $default,) {final _that = this;
switch (_that) {
case _LiveCampaignMetricsResponseModel() when $default != null:
return $default(_that.timestamp,_that.campaigns);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LiveCampaignMetricsResponseModel implements LiveCampaignMetricsResponseModel {
  const _LiveCampaignMetricsResponseModel({required this.timestamp, required final  List<LiveCampaignMetricsModel> campaigns}): _campaigns = campaigns;
  factory _LiveCampaignMetricsResponseModel.fromJson(Map<String, dynamic> json) => _$LiveCampaignMetricsResponseModelFromJson(json);

@override final  String timestamp;
 final  List<LiveCampaignMetricsModel> _campaigns;
@override List<LiveCampaignMetricsModel> get campaigns {
  if (_campaigns is EqualUnmodifiableListView) return _campaigns;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_campaigns);
}


/// Create a copy of LiveCampaignMetricsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LiveCampaignMetricsResponseModelCopyWith<_LiveCampaignMetricsResponseModel> get copyWith => __$LiveCampaignMetricsResponseModelCopyWithImpl<_LiveCampaignMetricsResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LiveCampaignMetricsResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LiveCampaignMetricsResponseModel&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&const DeepCollectionEquality().equals(other._campaigns, _campaigns));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,const DeepCollectionEquality().hash(_campaigns));

@override
String toString() {
  return 'LiveCampaignMetricsResponseModel(timestamp: $timestamp, campaigns: $campaigns)';
}


}

/// @nodoc
abstract mixin class _$LiveCampaignMetricsResponseModelCopyWith<$Res> implements $LiveCampaignMetricsResponseModelCopyWith<$Res> {
  factory _$LiveCampaignMetricsResponseModelCopyWith(_LiveCampaignMetricsResponseModel value, $Res Function(_LiveCampaignMetricsResponseModel) _then) = __$LiveCampaignMetricsResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String timestamp, List<LiveCampaignMetricsModel> campaigns
});




}
/// @nodoc
class __$LiveCampaignMetricsResponseModelCopyWithImpl<$Res>
    implements _$LiveCampaignMetricsResponseModelCopyWith<$Res> {
  __$LiveCampaignMetricsResponseModelCopyWithImpl(this._self, this._then);

  final _LiveCampaignMetricsResponseModel _self;
  final $Res Function(_LiveCampaignMetricsResponseModel) _then;

/// Create a copy of LiveCampaignMetricsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = null,Object? campaigns = null,}) {
  return _then(_LiveCampaignMetricsResponseModel(
timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as String,campaigns: null == campaigns ? _self._campaigns : campaigns // ignore: cast_nullable_to_non_nullable
as List<LiveCampaignMetricsModel>,
  ));
}


}


/// @nodoc
mixin _$LiveCampaignMetricsModel {

 String get id;@JsonKey(name: 'impressions_last_hour') int get impressionsLastHour;@JsonKey(name: 'clicks_last_hour') int get clicksLastHour;@JsonKey(name: 'spend_last_hour') double get spendLastHour;@JsonKey(name: 'ctr_last_hour') double get ctrLastHour;
/// Create a copy of LiveCampaignMetricsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LiveCampaignMetricsModelCopyWith<LiveCampaignMetricsModel> get copyWith => _$LiveCampaignMetricsModelCopyWithImpl<LiveCampaignMetricsModel>(this as LiveCampaignMetricsModel, _$identity);

  /// Serializes this LiveCampaignMetricsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LiveCampaignMetricsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.impressionsLastHour, impressionsLastHour) || other.impressionsLastHour == impressionsLastHour)&&(identical(other.clicksLastHour, clicksLastHour) || other.clicksLastHour == clicksLastHour)&&(identical(other.spendLastHour, spendLastHour) || other.spendLastHour == spendLastHour)&&(identical(other.ctrLastHour, ctrLastHour) || other.ctrLastHour == ctrLastHour));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,impressionsLastHour,clicksLastHour,spendLastHour,ctrLastHour);

@override
String toString() {
  return 'LiveCampaignMetricsModel(id: $id, impressionsLastHour: $impressionsLastHour, clicksLastHour: $clicksLastHour, spendLastHour: $spendLastHour, ctrLastHour: $ctrLastHour)';
}


}

/// @nodoc
abstract mixin class $LiveCampaignMetricsModelCopyWith<$Res>  {
  factory $LiveCampaignMetricsModelCopyWith(LiveCampaignMetricsModel value, $Res Function(LiveCampaignMetricsModel) _then) = _$LiveCampaignMetricsModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'impressions_last_hour') int impressionsLastHour,@JsonKey(name: 'clicks_last_hour') int clicksLastHour,@JsonKey(name: 'spend_last_hour') double spendLastHour,@JsonKey(name: 'ctr_last_hour') double ctrLastHour
});




}
/// @nodoc
class _$LiveCampaignMetricsModelCopyWithImpl<$Res>
    implements $LiveCampaignMetricsModelCopyWith<$Res> {
  _$LiveCampaignMetricsModelCopyWithImpl(this._self, this._then);

  final LiveCampaignMetricsModel _self;
  final $Res Function(LiveCampaignMetricsModel) _then;

/// Create a copy of LiveCampaignMetricsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? impressionsLastHour = null,Object? clicksLastHour = null,Object? spendLastHour = null,Object? ctrLastHour = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,impressionsLastHour: null == impressionsLastHour ? _self.impressionsLastHour : impressionsLastHour // ignore: cast_nullable_to_non_nullable
as int,clicksLastHour: null == clicksLastHour ? _self.clicksLastHour : clicksLastHour // ignore: cast_nullable_to_non_nullable
as int,spendLastHour: null == spendLastHour ? _self.spendLastHour : spendLastHour // ignore: cast_nullable_to_non_nullable
as double,ctrLastHour: null == ctrLastHour ? _self.ctrLastHour : ctrLastHour // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [LiveCampaignMetricsModel].
extension LiveCampaignMetricsModelPatterns on LiveCampaignMetricsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LiveCampaignMetricsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LiveCampaignMetricsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LiveCampaignMetricsModel value)  $default,){
final _that = this;
switch (_that) {
case _LiveCampaignMetricsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LiveCampaignMetricsModel value)?  $default,){
final _that = this;
switch (_that) {
case _LiveCampaignMetricsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'impressions_last_hour')  int impressionsLastHour, @JsonKey(name: 'clicks_last_hour')  int clicksLastHour, @JsonKey(name: 'spend_last_hour')  double spendLastHour, @JsonKey(name: 'ctr_last_hour')  double ctrLastHour)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LiveCampaignMetricsModel() when $default != null:
return $default(_that.id,_that.impressionsLastHour,_that.clicksLastHour,_that.spendLastHour,_that.ctrLastHour);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'impressions_last_hour')  int impressionsLastHour, @JsonKey(name: 'clicks_last_hour')  int clicksLastHour, @JsonKey(name: 'spend_last_hour')  double spendLastHour, @JsonKey(name: 'ctr_last_hour')  double ctrLastHour)  $default,) {final _that = this;
switch (_that) {
case _LiveCampaignMetricsModel():
return $default(_that.id,_that.impressionsLastHour,_that.clicksLastHour,_that.spendLastHour,_that.ctrLastHour);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'impressions_last_hour')  int impressionsLastHour, @JsonKey(name: 'clicks_last_hour')  int clicksLastHour, @JsonKey(name: 'spend_last_hour')  double spendLastHour, @JsonKey(name: 'ctr_last_hour')  double ctrLastHour)?  $default,) {final _that = this;
switch (_that) {
case _LiveCampaignMetricsModel() when $default != null:
return $default(_that.id,_that.impressionsLastHour,_that.clicksLastHour,_that.spendLastHour,_that.ctrLastHour);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LiveCampaignMetricsModel implements LiveCampaignMetricsModel {
  const _LiveCampaignMetricsModel({required this.id, @JsonKey(name: 'impressions_last_hour') required this.impressionsLastHour, @JsonKey(name: 'clicks_last_hour') required this.clicksLastHour, @JsonKey(name: 'spend_last_hour') required this.spendLastHour, @JsonKey(name: 'ctr_last_hour') required this.ctrLastHour});
  factory _LiveCampaignMetricsModel.fromJson(Map<String, dynamic> json) => _$LiveCampaignMetricsModelFromJson(json);

@override final  String id;
@override@JsonKey(name: 'impressions_last_hour') final  int impressionsLastHour;
@override@JsonKey(name: 'clicks_last_hour') final  int clicksLastHour;
@override@JsonKey(name: 'spend_last_hour') final  double spendLastHour;
@override@JsonKey(name: 'ctr_last_hour') final  double ctrLastHour;

/// Create a copy of LiveCampaignMetricsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LiveCampaignMetricsModelCopyWith<_LiveCampaignMetricsModel> get copyWith => __$LiveCampaignMetricsModelCopyWithImpl<_LiveCampaignMetricsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LiveCampaignMetricsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LiveCampaignMetricsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.impressionsLastHour, impressionsLastHour) || other.impressionsLastHour == impressionsLastHour)&&(identical(other.clicksLastHour, clicksLastHour) || other.clicksLastHour == clicksLastHour)&&(identical(other.spendLastHour, spendLastHour) || other.spendLastHour == spendLastHour)&&(identical(other.ctrLastHour, ctrLastHour) || other.ctrLastHour == ctrLastHour));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,impressionsLastHour,clicksLastHour,spendLastHour,ctrLastHour);

@override
String toString() {
  return 'LiveCampaignMetricsModel(id: $id, impressionsLastHour: $impressionsLastHour, clicksLastHour: $clicksLastHour, spendLastHour: $spendLastHour, ctrLastHour: $ctrLastHour)';
}


}

/// @nodoc
abstract mixin class _$LiveCampaignMetricsModelCopyWith<$Res> implements $LiveCampaignMetricsModelCopyWith<$Res> {
  factory _$LiveCampaignMetricsModelCopyWith(_LiveCampaignMetricsModel value, $Res Function(_LiveCampaignMetricsModel) _then) = __$LiveCampaignMetricsModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'impressions_last_hour') int impressionsLastHour,@JsonKey(name: 'clicks_last_hour') int clicksLastHour,@JsonKey(name: 'spend_last_hour') double spendLastHour,@JsonKey(name: 'ctr_last_hour') double ctrLastHour
});




}
/// @nodoc
class __$LiveCampaignMetricsModelCopyWithImpl<$Res>
    implements _$LiveCampaignMetricsModelCopyWith<$Res> {
  __$LiveCampaignMetricsModelCopyWithImpl(this._self, this._then);

  final _LiveCampaignMetricsModel _self;
  final $Res Function(_LiveCampaignMetricsModel) _then;

/// Create a copy of LiveCampaignMetricsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? impressionsLastHour = null,Object? clicksLastHour = null,Object? spendLastHour = null,Object? ctrLastHour = null,}) {
  return _then(_LiveCampaignMetricsModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,impressionsLastHour: null == impressionsLastHour ? _self.impressionsLastHour : impressionsLastHour // ignore: cast_nullable_to_non_nullable
as int,clicksLastHour: null == clicksLastHour ? _self.clicksLastHour : clicksLastHour // ignore: cast_nullable_to_non_nullable
as int,spendLastHour: null == spendLastHour ? _self.spendLastHour : spendLastHour // ignore: cast_nullable_to_non_nullable
as double,ctrLastHour: null == ctrLastHour ? _self.ctrLastHour : ctrLastHour // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
