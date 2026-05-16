// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_details_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CampaignHistoryResponseModel {

@JsonKey(name: 'campaign_id') String get campaignId;@JsonKey(name: 'data_points') int get dataPoints; List<CampaignHistoryModel> get history;
/// Create a copy of CampaignHistoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignHistoryResponseModelCopyWith<CampaignHistoryResponseModel> get copyWith => _$CampaignHistoryResponseModelCopyWithImpl<CampaignHistoryResponseModel>(this as CampaignHistoryResponseModel, _$identity);

  /// Serializes this CampaignHistoryResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignHistoryResponseModel&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.dataPoints, dataPoints) || other.dataPoints == dataPoints)&&const DeepCollectionEquality().equals(other.history, history));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,campaignId,dataPoints,const DeepCollectionEquality().hash(history));

@override
String toString() {
  return 'CampaignHistoryResponseModel(campaignId: $campaignId, dataPoints: $dataPoints, history: $history)';
}


}

/// @nodoc
abstract mixin class $CampaignHistoryResponseModelCopyWith<$Res>  {
  factory $CampaignHistoryResponseModelCopyWith(CampaignHistoryResponseModel value, $Res Function(CampaignHistoryResponseModel) _then) = _$CampaignHistoryResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'campaign_id') String campaignId,@JsonKey(name: 'data_points') int dataPoints, List<CampaignHistoryModel> history
});




}
/// @nodoc
class _$CampaignHistoryResponseModelCopyWithImpl<$Res>
    implements $CampaignHistoryResponseModelCopyWith<$Res> {
  _$CampaignHistoryResponseModelCopyWithImpl(this._self, this._then);

  final CampaignHistoryResponseModel _self;
  final $Res Function(CampaignHistoryResponseModel) _then;

/// Create a copy of CampaignHistoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? campaignId = null,Object? dataPoints = null,Object? history = null,}) {
  return _then(_self.copyWith(
campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,dataPoints: null == dataPoints ? _self.dataPoints : dataPoints // ignore: cast_nullable_to_non_nullable
as int,history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<CampaignHistoryModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [CampaignHistoryResponseModel].
extension CampaignHistoryResponseModelPatterns on CampaignHistoryResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CampaignHistoryResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CampaignHistoryResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CampaignHistoryResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CampaignHistoryResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CampaignHistoryResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CampaignHistoryResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'campaign_id')  String campaignId, @JsonKey(name: 'data_points')  int dataPoints,  List<CampaignHistoryModel> history)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CampaignHistoryResponseModel() when $default != null:
return $default(_that.campaignId,_that.dataPoints,_that.history);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'campaign_id')  String campaignId, @JsonKey(name: 'data_points')  int dataPoints,  List<CampaignHistoryModel> history)  $default,) {final _that = this;
switch (_that) {
case _CampaignHistoryResponseModel():
return $default(_that.campaignId,_that.dataPoints,_that.history);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'campaign_id')  String campaignId, @JsonKey(name: 'data_points')  int dataPoints,  List<CampaignHistoryModel> history)?  $default,) {final _that = this;
switch (_that) {
case _CampaignHistoryResponseModel() when $default != null:
return $default(_that.campaignId,_that.dataPoints,_that.history);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CampaignHistoryResponseModel implements CampaignHistoryResponseModel {
  const _CampaignHistoryResponseModel({@JsonKey(name: 'campaign_id') required this.campaignId, @JsonKey(name: 'data_points') required this.dataPoints, required final  List<CampaignHistoryModel> history}): _history = history;
  factory _CampaignHistoryResponseModel.fromJson(Map<String, dynamic> json) => _$CampaignHistoryResponseModelFromJson(json);

@override@JsonKey(name: 'campaign_id') final  String campaignId;
@override@JsonKey(name: 'data_points') final  int dataPoints;
 final  List<CampaignHistoryModel> _history;
@override List<CampaignHistoryModel> get history {
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_history);
}


/// Create a copy of CampaignHistoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignHistoryResponseModelCopyWith<_CampaignHistoryResponseModel> get copyWith => __$CampaignHistoryResponseModelCopyWithImpl<_CampaignHistoryResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CampaignHistoryResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CampaignHistoryResponseModel&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.dataPoints, dataPoints) || other.dataPoints == dataPoints)&&const DeepCollectionEquality().equals(other._history, _history));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,campaignId,dataPoints,const DeepCollectionEquality().hash(_history));

@override
String toString() {
  return 'CampaignHistoryResponseModel(campaignId: $campaignId, dataPoints: $dataPoints, history: $history)';
}


}

/// @nodoc
abstract mixin class _$CampaignHistoryResponseModelCopyWith<$Res> implements $CampaignHistoryResponseModelCopyWith<$Res> {
  factory _$CampaignHistoryResponseModelCopyWith(_CampaignHistoryResponseModel value, $Res Function(_CampaignHistoryResponseModel) _then) = __$CampaignHistoryResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'campaign_id') String campaignId,@JsonKey(name: 'data_points') int dataPoints, List<CampaignHistoryModel> history
});




}
/// @nodoc
class __$CampaignHistoryResponseModelCopyWithImpl<$Res>
    implements _$CampaignHistoryResponseModelCopyWith<$Res> {
  __$CampaignHistoryResponseModelCopyWithImpl(this._self, this._then);

  final _CampaignHistoryResponseModel _self;
  final $Res Function(_CampaignHistoryResponseModel) _then;

/// Create a copy of CampaignHistoryResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? campaignId = null,Object? dataPoints = null,Object? history = null,}) {
  return _then(_CampaignHistoryResponseModel(
campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,dataPoints: null == dataPoints ? _self.dataPoints : dataPoints // ignore: cast_nullable_to_non_nullable
as int,history: null == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<CampaignHistoryModel>,
  ));
}


}


/// @nodoc
mixin _$CampaignHistoryModel {

 String get date; int get impressions; int get clicks; double get ctr;
/// Create a copy of CampaignHistoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignHistoryModelCopyWith<CampaignHistoryModel> get copyWith => _$CampaignHistoryModelCopyWithImpl<CampaignHistoryModel>(this as CampaignHistoryModel, _$identity);

  /// Serializes this CampaignHistoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignHistoryModel&&(identical(other.date, date) || other.date == date)&&(identical(other.impressions, impressions) || other.impressions == impressions)&&(identical(other.clicks, clicks) || other.clicks == clicks)&&(identical(other.ctr, ctr) || other.ctr == ctr));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,impressions,clicks,ctr);

@override
String toString() {
  return 'CampaignHistoryModel(date: $date, impressions: $impressions, clicks: $clicks, ctr: $ctr)';
}


}

/// @nodoc
abstract mixin class $CampaignHistoryModelCopyWith<$Res>  {
  factory $CampaignHistoryModelCopyWith(CampaignHistoryModel value, $Res Function(CampaignHistoryModel) _then) = _$CampaignHistoryModelCopyWithImpl;
@useResult
$Res call({
 String date, int impressions, int clicks, double ctr
});




}
/// @nodoc
class _$CampaignHistoryModelCopyWithImpl<$Res>
    implements $CampaignHistoryModelCopyWith<$Res> {
  _$CampaignHistoryModelCopyWithImpl(this._self, this._then);

  final CampaignHistoryModel _self;
  final $Res Function(CampaignHistoryModel) _then;

/// Create a copy of CampaignHistoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? impressions = null,Object? clicks = null,Object? ctr = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,impressions: null == impressions ? _self.impressions : impressions // ignore: cast_nullable_to_non_nullable
as int,clicks: null == clicks ? _self.clicks : clicks // ignore: cast_nullable_to_non_nullable
as int,ctr: null == ctr ? _self.ctr : ctr // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CampaignHistoryModel].
extension CampaignHistoryModelPatterns on CampaignHistoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CampaignHistoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CampaignHistoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CampaignHistoryModel value)  $default,){
final _that = this;
switch (_that) {
case _CampaignHistoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CampaignHistoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _CampaignHistoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String date,  int impressions,  int clicks,  double ctr)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CampaignHistoryModel() when $default != null:
return $default(_that.date,_that.impressions,_that.clicks,_that.ctr);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String date,  int impressions,  int clicks,  double ctr)  $default,) {final _that = this;
switch (_that) {
case _CampaignHistoryModel():
return $default(_that.date,_that.impressions,_that.clicks,_that.ctr);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String date,  int impressions,  int clicks,  double ctr)?  $default,) {final _that = this;
switch (_that) {
case _CampaignHistoryModel() when $default != null:
return $default(_that.date,_that.impressions,_that.clicks,_that.ctr);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CampaignHistoryModel implements CampaignHistoryModel {
  const _CampaignHistoryModel({required this.date, required this.impressions, required this.clicks, required this.ctr});
  factory _CampaignHistoryModel.fromJson(Map<String, dynamic> json) => _$CampaignHistoryModelFromJson(json);

@override final  String date;
@override final  int impressions;
@override final  int clicks;
@override final  double ctr;

/// Create a copy of CampaignHistoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignHistoryModelCopyWith<_CampaignHistoryModel> get copyWith => __$CampaignHistoryModelCopyWithImpl<_CampaignHistoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CampaignHistoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CampaignHistoryModel&&(identical(other.date, date) || other.date == date)&&(identical(other.impressions, impressions) || other.impressions == impressions)&&(identical(other.clicks, clicks) || other.clicks == clicks)&&(identical(other.ctr, ctr) || other.ctr == ctr));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,impressions,clicks,ctr);

@override
String toString() {
  return 'CampaignHistoryModel(date: $date, impressions: $impressions, clicks: $clicks, ctr: $ctr)';
}


}

/// @nodoc
abstract mixin class _$CampaignHistoryModelCopyWith<$Res> implements $CampaignHistoryModelCopyWith<$Res> {
  factory _$CampaignHistoryModelCopyWith(_CampaignHistoryModel value, $Res Function(_CampaignHistoryModel) _then) = __$CampaignHistoryModelCopyWithImpl;
@override @useResult
$Res call({
 String date, int impressions, int clicks, double ctr
});




}
/// @nodoc
class __$CampaignHistoryModelCopyWithImpl<$Res>
    implements _$CampaignHistoryModelCopyWith<$Res> {
  __$CampaignHistoryModelCopyWithImpl(this._self, this._then);

  final _CampaignHistoryModel _self;
  final $Res Function(_CampaignHistoryModel) _then;

/// Create a copy of CampaignHistoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? impressions = null,Object? clicks = null,Object? ctr = null,}) {
  return _then(_CampaignHistoryModel(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,impressions: null == impressions ? _self.impressions : impressions // ignore: cast_nullable_to_non_nullable
as int,clicks: null == clicks ? _self.clicks : clicks // ignore: cast_nullable_to_non_nullable
as int,ctr: null == ctr ? _self.ctr : ctr // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
