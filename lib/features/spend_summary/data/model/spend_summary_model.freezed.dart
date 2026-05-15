// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spend_summary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CampaignAnalyticsResponseModel {

 String get range; CampaignAnalyticsSummaryModel get summary;
/// Create a copy of CampaignAnalyticsResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignAnalyticsResponseModelCopyWith<CampaignAnalyticsResponseModel> get copyWith => _$CampaignAnalyticsResponseModelCopyWithImpl<CampaignAnalyticsResponseModel>(this as CampaignAnalyticsResponseModel, _$identity);

  /// Serializes this CampaignAnalyticsResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignAnalyticsResponseModel&&(identical(other.range, range) || other.range == range)&&(identical(other.summary, summary) || other.summary == summary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,range,summary);

@override
String toString() {
  return 'CampaignAnalyticsResponseModel(range: $range, summary: $summary)';
}


}

/// @nodoc
abstract mixin class $CampaignAnalyticsResponseModelCopyWith<$Res>  {
  factory $CampaignAnalyticsResponseModelCopyWith(CampaignAnalyticsResponseModel value, $Res Function(CampaignAnalyticsResponseModel) _then) = _$CampaignAnalyticsResponseModelCopyWithImpl;
@useResult
$Res call({
 String range, CampaignAnalyticsSummaryModel summary
});


$CampaignAnalyticsSummaryModelCopyWith<$Res> get summary;

}
/// @nodoc
class _$CampaignAnalyticsResponseModelCopyWithImpl<$Res>
    implements $CampaignAnalyticsResponseModelCopyWith<$Res> {
  _$CampaignAnalyticsResponseModelCopyWithImpl(this._self, this._then);

  final CampaignAnalyticsResponseModel _self;
  final $Res Function(CampaignAnalyticsResponseModel) _then;

/// Create a copy of CampaignAnalyticsResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? range = null,Object? summary = null,}) {
  return _then(_self.copyWith(
range: null == range ? _self.range : range // ignore: cast_nullable_to_non_nullable
as String,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as CampaignAnalyticsSummaryModel,
  ));
}
/// Create a copy of CampaignAnalyticsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CampaignAnalyticsSummaryModelCopyWith<$Res> get summary {
  
  return $CampaignAnalyticsSummaryModelCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// Adds pattern-matching-related methods to [CampaignAnalyticsResponseModel].
extension CampaignAnalyticsResponseModelPatterns on CampaignAnalyticsResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CampaignAnalyticsResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CampaignAnalyticsResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CampaignAnalyticsResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CampaignAnalyticsResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CampaignAnalyticsResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CampaignAnalyticsResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String range,  CampaignAnalyticsSummaryModel summary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CampaignAnalyticsResponseModel() when $default != null:
return $default(_that.range,_that.summary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String range,  CampaignAnalyticsSummaryModel summary)  $default,) {final _that = this;
switch (_that) {
case _CampaignAnalyticsResponseModel():
return $default(_that.range,_that.summary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String range,  CampaignAnalyticsSummaryModel summary)?  $default,) {final _that = this;
switch (_that) {
case _CampaignAnalyticsResponseModel() when $default != null:
return $default(_that.range,_that.summary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CampaignAnalyticsResponseModel implements CampaignAnalyticsResponseModel {
  const _CampaignAnalyticsResponseModel({required this.range, required this.summary});
  factory _CampaignAnalyticsResponseModel.fromJson(Map<String, dynamic> json) => _$CampaignAnalyticsResponseModelFromJson(json);

@override final  String range;
@override final  CampaignAnalyticsSummaryModel summary;

/// Create a copy of CampaignAnalyticsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignAnalyticsResponseModelCopyWith<_CampaignAnalyticsResponseModel> get copyWith => __$CampaignAnalyticsResponseModelCopyWithImpl<_CampaignAnalyticsResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CampaignAnalyticsResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CampaignAnalyticsResponseModel&&(identical(other.range, range) || other.range == range)&&(identical(other.summary, summary) || other.summary == summary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,range,summary);

@override
String toString() {
  return 'CampaignAnalyticsResponseModel(range: $range, summary: $summary)';
}


}

/// @nodoc
abstract mixin class _$CampaignAnalyticsResponseModelCopyWith<$Res> implements $CampaignAnalyticsResponseModelCopyWith<$Res> {
  factory _$CampaignAnalyticsResponseModelCopyWith(_CampaignAnalyticsResponseModel value, $Res Function(_CampaignAnalyticsResponseModel) _then) = __$CampaignAnalyticsResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String range, CampaignAnalyticsSummaryModel summary
});


@override $CampaignAnalyticsSummaryModelCopyWith<$Res> get summary;

}
/// @nodoc
class __$CampaignAnalyticsResponseModelCopyWithImpl<$Res>
    implements _$CampaignAnalyticsResponseModelCopyWith<$Res> {
  __$CampaignAnalyticsResponseModelCopyWithImpl(this._self, this._then);

  final _CampaignAnalyticsResponseModel _self;
  final $Res Function(_CampaignAnalyticsResponseModel) _then;

/// Create a copy of CampaignAnalyticsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? range = null,Object? summary = null,}) {
  return _then(_CampaignAnalyticsResponseModel(
range: null == range ? _self.range : range // ignore: cast_nullable_to_non_nullable
as String,summary: null == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as CampaignAnalyticsSummaryModel,
  ));
}

/// Create a copy of CampaignAnalyticsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CampaignAnalyticsSummaryModelCopyWith<$Res> get summary {
  
  return $CampaignAnalyticsSummaryModelCopyWith<$Res>(_self.summary, (value) {
    return _then(_self.copyWith(summary: value));
  });
}
}


/// @nodoc
mixin _$CampaignAnalyticsSummaryModel {

@JsonKey(name: 'total_spend', fromJson: intFromJson) int get totalSpend;@JsonKey(name: 'total_impressions', fromJson: intFromJson) int get totalImpressions;@JsonKey(name: 'total_clicks', fromJson: intFromJson) int get totalClicks;@JsonKey(name: 'overall_ctr', fromJson: doubleFromJson) double get overallCtr;@JsonKey(name: 'by_channel') List<ChannelAnalyticsModel> get byChannel;@JsonKey(name: 'top_campaigns') List<TopCampaignModel> get topCampaigns;
/// Create a copy of CampaignAnalyticsSummaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignAnalyticsSummaryModelCopyWith<CampaignAnalyticsSummaryModel> get copyWith => _$CampaignAnalyticsSummaryModelCopyWithImpl<CampaignAnalyticsSummaryModel>(this as CampaignAnalyticsSummaryModel, _$identity);

  /// Serializes this CampaignAnalyticsSummaryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignAnalyticsSummaryModel&&(identical(other.totalSpend, totalSpend) || other.totalSpend == totalSpend)&&(identical(other.totalImpressions, totalImpressions) || other.totalImpressions == totalImpressions)&&(identical(other.totalClicks, totalClicks) || other.totalClicks == totalClicks)&&(identical(other.overallCtr, overallCtr) || other.overallCtr == overallCtr)&&const DeepCollectionEquality().equals(other.byChannel, byChannel)&&const DeepCollectionEquality().equals(other.topCampaigns, topCampaigns));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalSpend,totalImpressions,totalClicks,overallCtr,const DeepCollectionEquality().hash(byChannel),const DeepCollectionEquality().hash(topCampaigns));

@override
String toString() {
  return 'CampaignAnalyticsSummaryModel(totalSpend: $totalSpend, totalImpressions: $totalImpressions, totalClicks: $totalClicks, overallCtr: $overallCtr, byChannel: $byChannel, topCampaigns: $topCampaigns)';
}


}

/// @nodoc
abstract mixin class $CampaignAnalyticsSummaryModelCopyWith<$Res>  {
  factory $CampaignAnalyticsSummaryModelCopyWith(CampaignAnalyticsSummaryModel value, $Res Function(CampaignAnalyticsSummaryModel) _then) = _$CampaignAnalyticsSummaryModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_spend', fromJson: intFromJson) int totalSpend,@JsonKey(name: 'total_impressions', fromJson: intFromJson) int totalImpressions,@JsonKey(name: 'total_clicks', fromJson: intFromJson) int totalClicks,@JsonKey(name: 'overall_ctr', fromJson: doubleFromJson) double overallCtr,@JsonKey(name: 'by_channel') List<ChannelAnalyticsModel> byChannel,@JsonKey(name: 'top_campaigns') List<TopCampaignModel> topCampaigns
});




}
/// @nodoc
class _$CampaignAnalyticsSummaryModelCopyWithImpl<$Res>
    implements $CampaignAnalyticsSummaryModelCopyWith<$Res> {
  _$CampaignAnalyticsSummaryModelCopyWithImpl(this._self, this._then);

  final CampaignAnalyticsSummaryModel _self;
  final $Res Function(CampaignAnalyticsSummaryModel) _then;

/// Create a copy of CampaignAnalyticsSummaryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalSpend = null,Object? totalImpressions = null,Object? totalClicks = null,Object? overallCtr = null,Object? byChannel = null,Object? topCampaigns = null,}) {
  return _then(_self.copyWith(
totalSpend: null == totalSpend ? _self.totalSpend : totalSpend // ignore: cast_nullable_to_non_nullable
as int,totalImpressions: null == totalImpressions ? _self.totalImpressions : totalImpressions // ignore: cast_nullable_to_non_nullable
as int,totalClicks: null == totalClicks ? _self.totalClicks : totalClicks // ignore: cast_nullable_to_non_nullable
as int,overallCtr: null == overallCtr ? _self.overallCtr : overallCtr // ignore: cast_nullable_to_non_nullable
as double,byChannel: null == byChannel ? _self.byChannel : byChannel // ignore: cast_nullable_to_non_nullable
as List<ChannelAnalyticsModel>,topCampaigns: null == topCampaigns ? _self.topCampaigns : topCampaigns // ignore: cast_nullable_to_non_nullable
as List<TopCampaignModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [CampaignAnalyticsSummaryModel].
extension CampaignAnalyticsSummaryModelPatterns on CampaignAnalyticsSummaryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CampaignAnalyticsSummaryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CampaignAnalyticsSummaryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CampaignAnalyticsSummaryModel value)  $default,){
final _that = this;
switch (_that) {
case _CampaignAnalyticsSummaryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CampaignAnalyticsSummaryModel value)?  $default,){
final _that = this;
switch (_that) {
case _CampaignAnalyticsSummaryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_spend', fromJson: intFromJson)  int totalSpend, @JsonKey(name: 'total_impressions', fromJson: intFromJson)  int totalImpressions, @JsonKey(name: 'total_clicks', fromJson: intFromJson)  int totalClicks, @JsonKey(name: 'overall_ctr', fromJson: doubleFromJson)  double overallCtr, @JsonKey(name: 'by_channel')  List<ChannelAnalyticsModel> byChannel, @JsonKey(name: 'top_campaigns')  List<TopCampaignModel> topCampaigns)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CampaignAnalyticsSummaryModel() when $default != null:
return $default(_that.totalSpend,_that.totalImpressions,_that.totalClicks,_that.overallCtr,_that.byChannel,_that.topCampaigns);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_spend', fromJson: intFromJson)  int totalSpend, @JsonKey(name: 'total_impressions', fromJson: intFromJson)  int totalImpressions, @JsonKey(name: 'total_clicks', fromJson: intFromJson)  int totalClicks, @JsonKey(name: 'overall_ctr', fromJson: doubleFromJson)  double overallCtr, @JsonKey(name: 'by_channel')  List<ChannelAnalyticsModel> byChannel, @JsonKey(name: 'top_campaigns')  List<TopCampaignModel> topCampaigns)  $default,) {final _that = this;
switch (_that) {
case _CampaignAnalyticsSummaryModel():
return $default(_that.totalSpend,_that.totalImpressions,_that.totalClicks,_that.overallCtr,_that.byChannel,_that.topCampaigns);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_spend', fromJson: intFromJson)  int totalSpend, @JsonKey(name: 'total_impressions', fromJson: intFromJson)  int totalImpressions, @JsonKey(name: 'total_clicks', fromJson: intFromJson)  int totalClicks, @JsonKey(name: 'overall_ctr', fromJson: doubleFromJson)  double overallCtr, @JsonKey(name: 'by_channel')  List<ChannelAnalyticsModel> byChannel, @JsonKey(name: 'top_campaigns')  List<TopCampaignModel> topCampaigns)?  $default,) {final _that = this;
switch (_that) {
case _CampaignAnalyticsSummaryModel() when $default != null:
return $default(_that.totalSpend,_that.totalImpressions,_that.totalClicks,_that.overallCtr,_that.byChannel,_that.topCampaigns);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CampaignAnalyticsSummaryModel implements CampaignAnalyticsSummaryModel {
  const _CampaignAnalyticsSummaryModel({@JsonKey(name: 'total_spend', fromJson: intFromJson) required this.totalSpend, @JsonKey(name: 'total_impressions', fromJson: intFromJson) required this.totalImpressions, @JsonKey(name: 'total_clicks', fromJson: intFromJson) required this.totalClicks, @JsonKey(name: 'overall_ctr', fromJson: doubleFromJson) required this.overallCtr, @JsonKey(name: 'by_channel') required final  List<ChannelAnalyticsModel> byChannel, @JsonKey(name: 'top_campaigns') required final  List<TopCampaignModel> topCampaigns}): _byChannel = byChannel,_topCampaigns = topCampaigns;
  factory _CampaignAnalyticsSummaryModel.fromJson(Map<String, dynamic> json) => _$CampaignAnalyticsSummaryModelFromJson(json);

@override@JsonKey(name: 'total_spend', fromJson: intFromJson) final  int totalSpend;
@override@JsonKey(name: 'total_impressions', fromJson: intFromJson) final  int totalImpressions;
@override@JsonKey(name: 'total_clicks', fromJson: intFromJson) final  int totalClicks;
@override@JsonKey(name: 'overall_ctr', fromJson: doubleFromJson) final  double overallCtr;
 final  List<ChannelAnalyticsModel> _byChannel;
@override@JsonKey(name: 'by_channel') List<ChannelAnalyticsModel> get byChannel {
  if (_byChannel is EqualUnmodifiableListView) return _byChannel;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_byChannel);
}

 final  List<TopCampaignModel> _topCampaigns;
@override@JsonKey(name: 'top_campaigns') List<TopCampaignModel> get topCampaigns {
  if (_topCampaigns is EqualUnmodifiableListView) return _topCampaigns;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topCampaigns);
}


/// Create a copy of CampaignAnalyticsSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignAnalyticsSummaryModelCopyWith<_CampaignAnalyticsSummaryModel> get copyWith => __$CampaignAnalyticsSummaryModelCopyWithImpl<_CampaignAnalyticsSummaryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CampaignAnalyticsSummaryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CampaignAnalyticsSummaryModel&&(identical(other.totalSpend, totalSpend) || other.totalSpend == totalSpend)&&(identical(other.totalImpressions, totalImpressions) || other.totalImpressions == totalImpressions)&&(identical(other.totalClicks, totalClicks) || other.totalClicks == totalClicks)&&(identical(other.overallCtr, overallCtr) || other.overallCtr == overallCtr)&&const DeepCollectionEquality().equals(other._byChannel, _byChannel)&&const DeepCollectionEquality().equals(other._topCampaigns, _topCampaigns));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalSpend,totalImpressions,totalClicks,overallCtr,const DeepCollectionEquality().hash(_byChannel),const DeepCollectionEquality().hash(_topCampaigns));

@override
String toString() {
  return 'CampaignAnalyticsSummaryModel(totalSpend: $totalSpend, totalImpressions: $totalImpressions, totalClicks: $totalClicks, overallCtr: $overallCtr, byChannel: $byChannel, topCampaigns: $topCampaigns)';
}


}

/// @nodoc
abstract mixin class _$CampaignAnalyticsSummaryModelCopyWith<$Res> implements $CampaignAnalyticsSummaryModelCopyWith<$Res> {
  factory _$CampaignAnalyticsSummaryModelCopyWith(_CampaignAnalyticsSummaryModel value, $Res Function(_CampaignAnalyticsSummaryModel) _then) = __$CampaignAnalyticsSummaryModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_spend', fromJson: intFromJson) int totalSpend,@JsonKey(name: 'total_impressions', fromJson: intFromJson) int totalImpressions,@JsonKey(name: 'total_clicks', fromJson: intFromJson) int totalClicks,@JsonKey(name: 'overall_ctr', fromJson: doubleFromJson) double overallCtr,@JsonKey(name: 'by_channel') List<ChannelAnalyticsModel> byChannel,@JsonKey(name: 'top_campaigns') List<TopCampaignModel> topCampaigns
});




}
/// @nodoc
class __$CampaignAnalyticsSummaryModelCopyWithImpl<$Res>
    implements _$CampaignAnalyticsSummaryModelCopyWith<$Res> {
  __$CampaignAnalyticsSummaryModelCopyWithImpl(this._self, this._then);

  final _CampaignAnalyticsSummaryModel _self;
  final $Res Function(_CampaignAnalyticsSummaryModel) _then;

/// Create a copy of CampaignAnalyticsSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalSpend = null,Object? totalImpressions = null,Object? totalClicks = null,Object? overallCtr = null,Object? byChannel = null,Object? topCampaigns = null,}) {
  return _then(_CampaignAnalyticsSummaryModel(
totalSpend: null == totalSpend ? _self.totalSpend : totalSpend // ignore: cast_nullable_to_non_nullable
as int,totalImpressions: null == totalImpressions ? _self.totalImpressions : totalImpressions // ignore: cast_nullable_to_non_nullable
as int,totalClicks: null == totalClicks ? _self.totalClicks : totalClicks // ignore: cast_nullable_to_non_nullable
as int,overallCtr: null == overallCtr ? _self.overallCtr : overallCtr // ignore: cast_nullable_to_non_nullable
as double,byChannel: null == byChannel ? _self._byChannel : byChannel // ignore: cast_nullable_to_non_nullable
as List<ChannelAnalyticsModel>,topCampaigns: null == topCampaigns ? _self._topCampaigns : topCampaigns // ignore: cast_nullable_to_non_nullable
as List<TopCampaignModel>,
  ));
}


}


/// @nodoc
mixin _$ChannelAnalyticsModel {

 String get channel;@JsonKey(fromJson: intFromJson) int get spend;@JsonKey(fromJson: intFromJson) int get impressions;@JsonKey(fromJson: intFromJson) int get clicks;
/// Create a copy of ChannelAnalyticsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChannelAnalyticsModelCopyWith<ChannelAnalyticsModel> get copyWith => _$ChannelAnalyticsModelCopyWithImpl<ChannelAnalyticsModel>(this as ChannelAnalyticsModel, _$identity);

  /// Serializes this ChannelAnalyticsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChannelAnalyticsModel&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.spend, spend) || other.spend == spend)&&(identical(other.impressions, impressions) || other.impressions == impressions)&&(identical(other.clicks, clicks) || other.clicks == clicks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,channel,spend,impressions,clicks);

@override
String toString() {
  return 'ChannelAnalyticsModel(channel: $channel, spend: $spend, impressions: $impressions, clicks: $clicks)';
}


}

/// @nodoc
abstract mixin class $ChannelAnalyticsModelCopyWith<$Res>  {
  factory $ChannelAnalyticsModelCopyWith(ChannelAnalyticsModel value, $Res Function(ChannelAnalyticsModel) _then) = _$ChannelAnalyticsModelCopyWithImpl;
@useResult
$Res call({
 String channel,@JsonKey(fromJson: intFromJson) int spend,@JsonKey(fromJson: intFromJson) int impressions,@JsonKey(fromJson: intFromJson) int clicks
});




}
/// @nodoc
class _$ChannelAnalyticsModelCopyWithImpl<$Res>
    implements $ChannelAnalyticsModelCopyWith<$Res> {
  _$ChannelAnalyticsModelCopyWithImpl(this._self, this._then);

  final ChannelAnalyticsModel _self;
  final $Res Function(ChannelAnalyticsModel) _then;

/// Create a copy of ChannelAnalyticsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? channel = null,Object? spend = null,Object? impressions = null,Object? clicks = null,}) {
  return _then(_self.copyWith(
channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as String,spend: null == spend ? _self.spend : spend // ignore: cast_nullable_to_non_nullable
as int,impressions: null == impressions ? _self.impressions : impressions // ignore: cast_nullable_to_non_nullable
as int,clicks: null == clicks ? _self.clicks : clicks // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ChannelAnalyticsModel].
extension ChannelAnalyticsModelPatterns on ChannelAnalyticsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChannelAnalyticsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChannelAnalyticsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChannelAnalyticsModel value)  $default,){
final _that = this;
switch (_that) {
case _ChannelAnalyticsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChannelAnalyticsModel value)?  $default,){
final _that = this;
switch (_that) {
case _ChannelAnalyticsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String channel, @JsonKey(fromJson: intFromJson)  int spend, @JsonKey(fromJson: intFromJson)  int impressions, @JsonKey(fromJson: intFromJson)  int clicks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChannelAnalyticsModel() when $default != null:
return $default(_that.channel,_that.spend,_that.impressions,_that.clicks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String channel, @JsonKey(fromJson: intFromJson)  int spend, @JsonKey(fromJson: intFromJson)  int impressions, @JsonKey(fromJson: intFromJson)  int clicks)  $default,) {final _that = this;
switch (_that) {
case _ChannelAnalyticsModel():
return $default(_that.channel,_that.spend,_that.impressions,_that.clicks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String channel, @JsonKey(fromJson: intFromJson)  int spend, @JsonKey(fromJson: intFromJson)  int impressions, @JsonKey(fromJson: intFromJson)  int clicks)?  $default,) {final _that = this;
switch (_that) {
case _ChannelAnalyticsModel() when $default != null:
return $default(_that.channel,_that.spend,_that.impressions,_that.clicks);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChannelAnalyticsModel implements ChannelAnalyticsModel {
  const _ChannelAnalyticsModel({required this.channel, @JsonKey(fromJson: intFromJson) required this.spend, @JsonKey(fromJson: intFromJson) required this.impressions, @JsonKey(fromJson: intFromJson) required this.clicks});
  factory _ChannelAnalyticsModel.fromJson(Map<String, dynamic> json) => _$ChannelAnalyticsModelFromJson(json);

@override final  String channel;
@override@JsonKey(fromJson: intFromJson) final  int spend;
@override@JsonKey(fromJson: intFromJson) final  int impressions;
@override@JsonKey(fromJson: intFromJson) final  int clicks;

/// Create a copy of ChannelAnalyticsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChannelAnalyticsModelCopyWith<_ChannelAnalyticsModel> get copyWith => __$ChannelAnalyticsModelCopyWithImpl<_ChannelAnalyticsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChannelAnalyticsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChannelAnalyticsModel&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.spend, spend) || other.spend == spend)&&(identical(other.impressions, impressions) || other.impressions == impressions)&&(identical(other.clicks, clicks) || other.clicks == clicks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,channel,spend,impressions,clicks);

@override
String toString() {
  return 'ChannelAnalyticsModel(channel: $channel, spend: $spend, impressions: $impressions, clicks: $clicks)';
}


}

/// @nodoc
abstract mixin class _$ChannelAnalyticsModelCopyWith<$Res> implements $ChannelAnalyticsModelCopyWith<$Res> {
  factory _$ChannelAnalyticsModelCopyWith(_ChannelAnalyticsModel value, $Res Function(_ChannelAnalyticsModel) _then) = __$ChannelAnalyticsModelCopyWithImpl;
@override @useResult
$Res call({
 String channel,@JsonKey(fromJson: intFromJson) int spend,@JsonKey(fromJson: intFromJson) int impressions,@JsonKey(fromJson: intFromJson) int clicks
});




}
/// @nodoc
class __$ChannelAnalyticsModelCopyWithImpl<$Res>
    implements _$ChannelAnalyticsModelCopyWith<$Res> {
  __$ChannelAnalyticsModelCopyWithImpl(this._self, this._then);

  final _ChannelAnalyticsModel _self;
  final $Res Function(_ChannelAnalyticsModel) _then;

/// Create a copy of ChannelAnalyticsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? channel = null,Object? spend = null,Object? impressions = null,Object? clicks = null,}) {
  return _then(_ChannelAnalyticsModel(
channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as String,spend: null == spend ? _self.spend : spend // ignore: cast_nullable_to_non_nullable
as int,impressions: null == impressions ? _self.impressions : impressions // ignore: cast_nullable_to_non_nullable
as int,clicks: null == clicks ? _self.clicks : clicks // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$TopCampaignModel {

 String get id; String get name;@JsonKey(fromJson: doubleFromJson) double get ctr;@JsonKey(fromJson: intFromJson) int get spend;
/// Create a copy of TopCampaignModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopCampaignModelCopyWith<TopCampaignModel> get copyWith => _$TopCampaignModelCopyWithImpl<TopCampaignModel>(this as TopCampaignModel, _$identity);

  /// Serializes this TopCampaignModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopCampaignModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.ctr, ctr) || other.ctr == ctr)&&(identical(other.spend, spend) || other.spend == spend));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,ctr,spend);

@override
String toString() {
  return 'TopCampaignModel(id: $id, name: $name, ctr: $ctr, spend: $spend)';
}


}

/// @nodoc
abstract mixin class $TopCampaignModelCopyWith<$Res>  {
  factory $TopCampaignModelCopyWith(TopCampaignModel value, $Res Function(TopCampaignModel) _then) = _$TopCampaignModelCopyWithImpl;
@useResult
$Res call({
 String id, String name,@JsonKey(fromJson: doubleFromJson) double ctr,@JsonKey(fromJson: intFromJson) int spend
});




}
/// @nodoc
class _$TopCampaignModelCopyWithImpl<$Res>
    implements $TopCampaignModelCopyWith<$Res> {
  _$TopCampaignModelCopyWithImpl(this._self, this._then);

  final TopCampaignModel _self;
  final $Res Function(TopCampaignModel) _then;

/// Create a copy of TopCampaignModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? ctr = null,Object? spend = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,ctr: null == ctr ? _self.ctr : ctr // ignore: cast_nullable_to_non_nullable
as double,spend: null == spend ? _self.spend : spend // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TopCampaignModel].
extension TopCampaignModelPatterns on TopCampaignModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopCampaignModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopCampaignModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopCampaignModel value)  $default,){
final _that = this;
switch (_that) {
case _TopCampaignModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopCampaignModel value)?  $default,){
final _that = this;
switch (_that) {
case _TopCampaignModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(fromJson: doubleFromJson)  double ctr, @JsonKey(fromJson: intFromJson)  int spend)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopCampaignModel() when $default != null:
return $default(_that.id,_that.name,_that.ctr,_that.spend);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(fromJson: doubleFromJson)  double ctr, @JsonKey(fromJson: intFromJson)  int spend)  $default,) {final _that = this;
switch (_that) {
case _TopCampaignModel():
return $default(_that.id,_that.name,_that.ctr,_that.spend);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @JsonKey(fromJson: doubleFromJson)  double ctr, @JsonKey(fromJson: intFromJson)  int spend)?  $default,) {final _that = this;
switch (_that) {
case _TopCampaignModel() when $default != null:
return $default(_that.id,_that.name,_that.ctr,_that.spend);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopCampaignModel implements TopCampaignModel {
  const _TopCampaignModel({required this.id, required this.name, @JsonKey(fromJson: doubleFromJson) required this.ctr, @JsonKey(fromJson: intFromJson) required this.spend});
  factory _TopCampaignModel.fromJson(Map<String, dynamic> json) => _$TopCampaignModelFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey(fromJson: doubleFromJson) final  double ctr;
@override@JsonKey(fromJson: intFromJson) final  int spend;

/// Create a copy of TopCampaignModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopCampaignModelCopyWith<_TopCampaignModel> get copyWith => __$TopCampaignModelCopyWithImpl<_TopCampaignModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopCampaignModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopCampaignModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.ctr, ctr) || other.ctr == ctr)&&(identical(other.spend, spend) || other.spend == spend));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,ctr,spend);

@override
String toString() {
  return 'TopCampaignModel(id: $id, name: $name, ctr: $ctr, spend: $spend)';
}


}

/// @nodoc
abstract mixin class _$TopCampaignModelCopyWith<$Res> implements $TopCampaignModelCopyWith<$Res> {
  factory _$TopCampaignModelCopyWith(_TopCampaignModel value, $Res Function(_TopCampaignModel) _then) = __$TopCampaignModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@JsonKey(fromJson: doubleFromJson) double ctr,@JsonKey(fromJson: intFromJson) int spend
});




}
/// @nodoc
class __$TopCampaignModelCopyWithImpl<$Res>
    implements _$TopCampaignModelCopyWith<$Res> {
  __$TopCampaignModelCopyWithImpl(this._self, this._then);

  final _TopCampaignModel _self;
  final $Res Function(_TopCampaignModel) _then;

/// Create a copy of TopCampaignModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? ctr = null,Object? spend = null,}) {
  return _then(_TopCampaignModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,ctr: null == ctr ? _self.ctr : ctr // ignore: cast_nullable_to_non_nullable
as double,spend: null == spend ? _self.spend : spend // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
