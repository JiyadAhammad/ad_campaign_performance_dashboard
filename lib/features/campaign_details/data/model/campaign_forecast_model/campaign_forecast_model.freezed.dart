// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_forecast_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CampaignForecastResponseModel {

@JsonKey(name: 'campaign_id') String get campaignId;@JsonKey(name: 'horizon_days') int get horizonDays; String get model;@JsonKey(name: 'generated_at') String get generatedAt; List<CampaignForecastModel> get forecast; ForecastRecommendationModel get recommendation;
/// Create a copy of CampaignForecastResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignForecastResponseModelCopyWith<CampaignForecastResponseModel> get copyWith => _$CampaignForecastResponseModelCopyWithImpl<CampaignForecastResponseModel>(this as CampaignForecastResponseModel, _$identity);

  /// Serializes this CampaignForecastResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignForecastResponseModel&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.horizonDays, horizonDays) || other.horizonDays == horizonDays)&&(identical(other.model, model) || other.model == model)&&(identical(other.generatedAt, generatedAt) || other.generatedAt == generatedAt)&&const DeepCollectionEquality().equals(other.forecast, forecast)&&(identical(other.recommendation, recommendation) || other.recommendation == recommendation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,campaignId,horizonDays,model,generatedAt,const DeepCollectionEquality().hash(forecast),recommendation);

@override
String toString() {
  return 'CampaignForecastResponseModel(campaignId: $campaignId, horizonDays: $horizonDays, model: $model, generatedAt: $generatedAt, forecast: $forecast, recommendation: $recommendation)';
}


}

/// @nodoc
abstract mixin class $CampaignForecastResponseModelCopyWith<$Res>  {
  factory $CampaignForecastResponseModelCopyWith(CampaignForecastResponseModel value, $Res Function(CampaignForecastResponseModel) _then) = _$CampaignForecastResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'campaign_id') String campaignId,@JsonKey(name: 'horizon_days') int horizonDays, String model,@JsonKey(name: 'generated_at') String generatedAt, List<CampaignForecastModel> forecast, ForecastRecommendationModel recommendation
});


$ForecastRecommendationModelCopyWith<$Res> get recommendation;

}
/// @nodoc
class _$CampaignForecastResponseModelCopyWithImpl<$Res>
    implements $CampaignForecastResponseModelCopyWith<$Res> {
  _$CampaignForecastResponseModelCopyWithImpl(this._self, this._then);

  final CampaignForecastResponseModel _self;
  final $Res Function(CampaignForecastResponseModel) _then;

/// Create a copy of CampaignForecastResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? campaignId = null,Object? horizonDays = null,Object? model = null,Object? generatedAt = null,Object? forecast = null,Object? recommendation = null,}) {
  return _then(_self.copyWith(
campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,horizonDays: null == horizonDays ? _self.horizonDays : horizonDays // ignore: cast_nullable_to_non_nullable
as int,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,generatedAt: null == generatedAt ? _self.generatedAt : generatedAt // ignore: cast_nullable_to_non_nullable
as String,forecast: null == forecast ? _self.forecast : forecast // ignore: cast_nullable_to_non_nullable
as List<CampaignForecastModel>,recommendation: null == recommendation ? _self.recommendation : recommendation // ignore: cast_nullable_to_non_nullable
as ForecastRecommendationModel,
  ));
}
/// Create a copy of CampaignForecastResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ForecastRecommendationModelCopyWith<$Res> get recommendation {
  
  return $ForecastRecommendationModelCopyWith<$Res>(_self.recommendation, (value) {
    return _then(_self.copyWith(recommendation: value));
  });
}
}


/// Adds pattern-matching-related methods to [CampaignForecastResponseModel].
extension CampaignForecastResponseModelPatterns on CampaignForecastResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CampaignForecastResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CampaignForecastResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CampaignForecastResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CampaignForecastResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CampaignForecastResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CampaignForecastResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'campaign_id')  String campaignId, @JsonKey(name: 'horizon_days')  int horizonDays,  String model, @JsonKey(name: 'generated_at')  String generatedAt,  List<CampaignForecastModel> forecast,  ForecastRecommendationModel recommendation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CampaignForecastResponseModel() when $default != null:
return $default(_that.campaignId,_that.horizonDays,_that.model,_that.generatedAt,_that.forecast,_that.recommendation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'campaign_id')  String campaignId, @JsonKey(name: 'horizon_days')  int horizonDays,  String model, @JsonKey(name: 'generated_at')  String generatedAt,  List<CampaignForecastModel> forecast,  ForecastRecommendationModel recommendation)  $default,) {final _that = this;
switch (_that) {
case _CampaignForecastResponseModel():
return $default(_that.campaignId,_that.horizonDays,_that.model,_that.generatedAt,_that.forecast,_that.recommendation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'campaign_id')  String campaignId, @JsonKey(name: 'horizon_days')  int horizonDays,  String model, @JsonKey(name: 'generated_at')  String generatedAt,  List<CampaignForecastModel> forecast,  ForecastRecommendationModel recommendation)?  $default,) {final _that = this;
switch (_that) {
case _CampaignForecastResponseModel() when $default != null:
return $default(_that.campaignId,_that.horizonDays,_that.model,_that.generatedAt,_that.forecast,_that.recommendation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CampaignForecastResponseModel implements CampaignForecastResponseModel {
  const _CampaignForecastResponseModel({@JsonKey(name: 'campaign_id') required this.campaignId, @JsonKey(name: 'horizon_days') required this.horizonDays, required this.model, @JsonKey(name: 'generated_at') required this.generatedAt, required final  List<CampaignForecastModel> forecast, required this.recommendation}): _forecast = forecast;
  factory _CampaignForecastResponseModel.fromJson(Map<String, dynamic> json) => _$CampaignForecastResponseModelFromJson(json);

@override@JsonKey(name: 'campaign_id') final  String campaignId;
@override@JsonKey(name: 'horizon_days') final  int horizonDays;
@override final  String model;
@override@JsonKey(name: 'generated_at') final  String generatedAt;
 final  List<CampaignForecastModel> _forecast;
@override List<CampaignForecastModel> get forecast {
  if (_forecast is EqualUnmodifiableListView) return _forecast;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_forecast);
}

@override final  ForecastRecommendationModel recommendation;

/// Create a copy of CampaignForecastResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignForecastResponseModelCopyWith<_CampaignForecastResponseModel> get copyWith => __$CampaignForecastResponseModelCopyWithImpl<_CampaignForecastResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CampaignForecastResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CampaignForecastResponseModel&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.horizonDays, horizonDays) || other.horizonDays == horizonDays)&&(identical(other.model, model) || other.model == model)&&(identical(other.generatedAt, generatedAt) || other.generatedAt == generatedAt)&&const DeepCollectionEquality().equals(other._forecast, _forecast)&&(identical(other.recommendation, recommendation) || other.recommendation == recommendation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,campaignId,horizonDays,model,generatedAt,const DeepCollectionEquality().hash(_forecast),recommendation);

@override
String toString() {
  return 'CampaignForecastResponseModel(campaignId: $campaignId, horizonDays: $horizonDays, model: $model, generatedAt: $generatedAt, forecast: $forecast, recommendation: $recommendation)';
}


}

/// @nodoc
abstract mixin class _$CampaignForecastResponseModelCopyWith<$Res> implements $CampaignForecastResponseModelCopyWith<$Res> {
  factory _$CampaignForecastResponseModelCopyWith(_CampaignForecastResponseModel value, $Res Function(_CampaignForecastResponseModel) _then) = __$CampaignForecastResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'campaign_id') String campaignId,@JsonKey(name: 'horizon_days') int horizonDays, String model,@JsonKey(name: 'generated_at') String generatedAt, List<CampaignForecastModel> forecast, ForecastRecommendationModel recommendation
});


@override $ForecastRecommendationModelCopyWith<$Res> get recommendation;

}
/// @nodoc
class __$CampaignForecastResponseModelCopyWithImpl<$Res>
    implements _$CampaignForecastResponseModelCopyWith<$Res> {
  __$CampaignForecastResponseModelCopyWithImpl(this._self, this._then);

  final _CampaignForecastResponseModel _self;
  final $Res Function(_CampaignForecastResponseModel) _then;

/// Create a copy of CampaignForecastResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? campaignId = null,Object? horizonDays = null,Object? model = null,Object? generatedAt = null,Object? forecast = null,Object? recommendation = null,}) {
  return _then(_CampaignForecastResponseModel(
campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,horizonDays: null == horizonDays ? _self.horizonDays : horizonDays // ignore: cast_nullable_to_non_nullable
as int,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,generatedAt: null == generatedAt ? _self.generatedAt : generatedAt // ignore: cast_nullable_to_non_nullable
as String,forecast: null == forecast ? _self._forecast : forecast // ignore: cast_nullable_to_non_nullable
as List<CampaignForecastModel>,recommendation: null == recommendation ? _self.recommendation : recommendation // ignore: cast_nullable_to_non_nullable
as ForecastRecommendationModel,
  ));
}

/// Create a copy of CampaignForecastResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ForecastRecommendationModelCopyWith<$Res> get recommendation {
  
  return $ForecastRecommendationModelCopyWith<$Res>(_self.recommendation, (value) {
    return _then(_self.copyWith(recommendation: value));
  });
}
}


/// @nodoc
mixin _$CampaignForecastModel {

 String get date;@JsonKey(name: 'predicted_ctr') double get predictedCtr;@JsonKey(name: 'lower_bound') double get lowerBound;@JsonKey(name: 'upper_bound') double get upperBound;
/// Create a copy of CampaignForecastModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignForecastModelCopyWith<CampaignForecastModel> get copyWith => _$CampaignForecastModelCopyWithImpl<CampaignForecastModel>(this as CampaignForecastModel, _$identity);

  /// Serializes this CampaignForecastModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignForecastModel&&(identical(other.date, date) || other.date == date)&&(identical(other.predictedCtr, predictedCtr) || other.predictedCtr == predictedCtr)&&(identical(other.lowerBound, lowerBound) || other.lowerBound == lowerBound)&&(identical(other.upperBound, upperBound) || other.upperBound == upperBound));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,predictedCtr,lowerBound,upperBound);

@override
String toString() {
  return 'CampaignForecastModel(date: $date, predictedCtr: $predictedCtr, lowerBound: $lowerBound, upperBound: $upperBound)';
}


}

/// @nodoc
abstract mixin class $CampaignForecastModelCopyWith<$Res>  {
  factory $CampaignForecastModelCopyWith(CampaignForecastModel value, $Res Function(CampaignForecastModel) _then) = _$CampaignForecastModelCopyWithImpl;
@useResult
$Res call({
 String date,@JsonKey(name: 'predicted_ctr') double predictedCtr,@JsonKey(name: 'lower_bound') double lowerBound,@JsonKey(name: 'upper_bound') double upperBound
});




}
/// @nodoc
class _$CampaignForecastModelCopyWithImpl<$Res>
    implements $CampaignForecastModelCopyWith<$Res> {
  _$CampaignForecastModelCopyWithImpl(this._self, this._then);

  final CampaignForecastModel _self;
  final $Res Function(CampaignForecastModel) _then;

/// Create a copy of CampaignForecastModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? predictedCtr = null,Object? lowerBound = null,Object? upperBound = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,predictedCtr: null == predictedCtr ? _self.predictedCtr : predictedCtr // ignore: cast_nullable_to_non_nullable
as double,lowerBound: null == lowerBound ? _self.lowerBound : lowerBound // ignore: cast_nullable_to_non_nullable
as double,upperBound: null == upperBound ? _self.upperBound : upperBound // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CampaignForecastModel].
extension CampaignForecastModelPatterns on CampaignForecastModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CampaignForecastModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CampaignForecastModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CampaignForecastModel value)  $default,){
final _that = this;
switch (_that) {
case _CampaignForecastModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CampaignForecastModel value)?  $default,){
final _that = this;
switch (_that) {
case _CampaignForecastModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String date, @JsonKey(name: 'predicted_ctr')  double predictedCtr, @JsonKey(name: 'lower_bound')  double lowerBound, @JsonKey(name: 'upper_bound')  double upperBound)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CampaignForecastModel() when $default != null:
return $default(_that.date,_that.predictedCtr,_that.lowerBound,_that.upperBound);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String date, @JsonKey(name: 'predicted_ctr')  double predictedCtr, @JsonKey(name: 'lower_bound')  double lowerBound, @JsonKey(name: 'upper_bound')  double upperBound)  $default,) {final _that = this;
switch (_that) {
case _CampaignForecastModel():
return $default(_that.date,_that.predictedCtr,_that.lowerBound,_that.upperBound);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String date, @JsonKey(name: 'predicted_ctr')  double predictedCtr, @JsonKey(name: 'lower_bound')  double lowerBound, @JsonKey(name: 'upper_bound')  double upperBound)?  $default,) {final _that = this;
switch (_that) {
case _CampaignForecastModel() when $default != null:
return $default(_that.date,_that.predictedCtr,_that.lowerBound,_that.upperBound);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CampaignForecastModel implements CampaignForecastModel {
  const _CampaignForecastModel({required this.date, @JsonKey(name: 'predicted_ctr') required this.predictedCtr, @JsonKey(name: 'lower_bound') required this.lowerBound, @JsonKey(name: 'upper_bound') required this.upperBound});
  factory _CampaignForecastModel.fromJson(Map<String, dynamic> json) => _$CampaignForecastModelFromJson(json);

@override final  String date;
@override@JsonKey(name: 'predicted_ctr') final  double predictedCtr;
@override@JsonKey(name: 'lower_bound') final  double lowerBound;
@override@JsonKey(name: 'upper_bound') final  double upperBound;

/// Create a copy of CampaignForecastModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignForecastModelCopyWith<_CampaignForecastModel> get copyWith => __$CampaignForecastModelCopyWithImpl<_CampaignForecastModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CampaignForecastModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CampaignForecastModel&&(identical(other.date, date) || other.date == date)&&(identical(other.predictedCtr, predictedCtr) || other.predictedCtr == predictedCtr)&&(identical(other.lowerBound, lowerBound) || other.lowerBound == lowerBound)&&(identical(other.upperBound, upperBound) || other.upperBound == upperBound));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,predictedCtr,lowerBound,upperBound);

@override
String toString() {
  return 'CampaignForecastModel(date: $date, predictedCtr: $predictedCtr, lowerBound: $lowerBound, upperBound: $upperBound)';
}


}

/// @nodoc
abstract mixin class _$CampaignForecastModelCopyWith<$Res> implements $CampaignForecastModelCopyWith<$Res> {
  factory _$CampaignForecastModelCopyWith(_CampaignForecastModel value, $Res Function(_CampaignForecastModel) _then) = __$CampaignForecastModelCopyWithImpl;
@override @useResult
$Res call({
 String date,@JsonKey(name: 'predicted_ctr') double predictedCtr,@JsonKey(name: 'lower_bound') double lowerBound,@JsonKey(name: 'upper_bound') double upperBound
});




}
/// @nodoc
class __$CampaignForecastModelCopyWithImpl<$Res>
    implements _$CampaignForecastModelCopyWith<$Res> {
  __$CampaignForecastModelCopyWithImpl(this._self, this._then);

  final _CampaignForecastModel _self;
  final $Res Function(_CampaignForecastModel) _then;

/// Create a copy of CampaignForecastModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? predictedCtr = null,Object? lowerBound = null,Object? upperBound = null,}) {
  return _then(_CampaignForecastModel(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,predictedCtr: null == predictedCtr ? _self.predictedCtr : predictedCtr // ignore: cast_nullable_to_non_nullable
as double,lowerBound: null == lowerBound ? _self.lowerBound : lowerBound // ignore: cast_nullable_to_non_nullable
as double,upperBound: null == upperBound ? _self.upperBound : upperBound // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$ForecastRecommendationModel {

 String get trend;@JsonKey(name: 'change_percent') double get changePercent; String get message;@JsonKey(name: 'suggested_daily_budget') int get suggestedDailyBudget;
/// Create a copy of ForecastRecommendationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForecastRecommendationModelCopyWith<ForecastRecommendationModel> get copyWith => _$ForecastRecommendationModelCopyWithImpl<ForecastRecommendationModel>(this as ForecastRecommendationModel, _$identity);

  /// Serializes this ForecastRecommendationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForecastRecommendationModel&&(identical(other.trend, trend) || other.trend == trend)&&(identical(other.changePercent, changePercent) || other.changePercent == changePercent)&&(identical(other.message, message) || other.message == message)&&(identical(other.suggestedDailyBudget, suggestedDailyBudget) || other.suggestedDailyBudget == suggestedDailyBudget));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,trend,changePercent,message,suggestedDailyBudget);

@override
String toString() {
  return 'ForecastRecommendationModel(trend: $trend, changePercent: $changePercent, message: $message, suggestedDailyBudget: $suggestedDailyBudget)';
}


}

/// @nodoc
abstract mixin class $ForecastRecommendationModelCopyWith<$Res>  {
  factory $ForecastRecommendationModelCopyWith(ForecastRecommendationModel value, $Res Function(ForecastRecommendationModel) _then) = _$ForecastRecommendationModelCopyWithImpl;
@useResult
$Res call({
 String trend,@JsonKey(name: 'change_percent') double changePercent, String message,@JsonKey(name: 'suggested_daily_budget') int suggestedDailyBudget
});




}
/// @nodoc
class _$ForecastRecommendationModelCopyWithImpl<$Res>
    implements $ForecastRecommendationModelCopyWith<$Res> {
  _$ForecastRecommendationModelCopyWithImpl(this._self, this._then);

  final ForecastRecommendationModel _self;
  final $Res Function(ForecastRecommendationModel) _then;

/// Create a copy of ForecastRecommendationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? trend = null,Object? changePercent = null,Object? message = null,Object? suggestedDailyBudget = null,}) {
  return _then(_self.copyWith(
trend: null == trend ? _self.trend : trend // ignore: cast_nullable_to_non_nullable
as String,changePercent: null == changePercent ? _self.changePercent : changePercent // ignore: cast_nullable_to_non_nullable
as double,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,suggestedDailyBudget: null == suggestedDailyBudget ? _self.suggestedDailyBudget : suggestedDailyBudget // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ForecastRecommendationModel].
extension ForecastRecommendationModelPatterns on ForecastRecommendationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForecastRecommendationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForecastRecommendationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForecastRecommendationModel value)  $default,){
final _that = this;
switch (_that) {
case _ForecastRecommendationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForecastRecommendationModel value)?  $default,){
final _that = this;
switch (_that) {
case _ForecastRecommendationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String trend, @JsonKey(name: 'change_percent')  double changePercent,  String message, @JsonKey(name: 'suggested_daily_budget')  int suggestedDailyBudget)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForecastRecommendationModel() when $default != null:
return $default(_that.trend,_that.changePercent,_that.message,_that.suggestedDailyBudget);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String trend, @JsonKey(name: 'change_percent')  double changePercent,  String message, @JsonKey(name: 'suggested_daily_budget')  int suggestedDailyBudget)  $default,) {final _that = this;
switch (_that) {
case _ForecastRecommendationModel():
return $default(_that.trend,_that.changePercent,_that.message,_that.suggestedDailyBudget);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String trend, @JsonKey(name: 'change_percent')  double changePercent,  String message, @JsonKey(name: 'suggested_daily_budget')  int suggestedDailyBudget)?  $default,) {final _that = this;
switch (_that) {
case _ForecastRecommendationModel() when $default != null:
return $default(_that.trend,_that.changePercent,_that.message,_that.suggestedDailyBudget);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ForecastRecommendationModel implements ForecastRecommendationModel {
  const _ForecastRecommendationModel({required this.trend, @JsonKey(name: 'change_percent') required this.changePercent, required this.message, @JsonKey(name: 'suggested_daily_budget') required this.suggestedDailyBudget});
  factory _ForecastRecommendationModel.fromJson(Map<String, dynamic> json) => _$ForecastRecommendationModelFromJson(json);

@override final  String trend;
@override@JsonKey(name: 'change_percent') final  double changePercent;
@override final  String message;
@override@JsonKey(name: 'suggested_daily_budget') final  int suggestedDailyBudget;

/// Create a copy of ForecastRecommendationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForecastRecommendationModelCopyWith<_ForecastRecommendationModel> get copyWith => __$ForecastRecommendationModelCopyWithImpl<_ForecastRecommendationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForecastRecommendationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForecastRecommendationModel&&(identical(other.trend, trend) || other.trend == trend)&&(identical(other.changePercent, changePercent) || other.changePercent == changePercent)&&(identical(other.message, message) || other.message == message)&&(identical(other.suggestedDailyBudget, suggestedDailyBudget) || other.suggestedDailyBudget == suggestedDailyBudget));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,trend,changePercent,message,suggestedDailyBudget);

@override
String toString() {
  return 'ForecastRecommendationModel(trend: $trend, changePercent: $changePercent, message: $message, suggestedDailyBudget: $suggestedDailyBudget)';
}


}

/// @nodoc
abstract mixin class _$ForecastRecommendationModelCopyWith<$Res> implements $ForecastRecommendationModelCopyWith<$Res> {
  factory _$ForecastRecommendationModelCopyWith(_ForecastRecommendationModel value, $Res Function(_ForecastRecommendationModel) _then) = __$ForecastRecommendationModelCopyWithImpl;
@override @useResult
$Res call({
 String trend,@JsonKey(name: 'change_percent') double changePercent, String message,@JsonKey(name: 'suggested_daily_budget') int suggestedDailyBudget
});




}
/// @nodoc
class __$ForecastRecommendationModelCopyWithImpl<$Res>
    implements _$ForecastRecommendationModelCopyWith<$Res> {
  __$ForecastRecommendationModelCopyWithImpl(this._self, this._then);

  final _ForecastRecommendationModel _self;
  final $Res Function(_ForecastRecommendationModel) _then;

/// Create a copy of ForecastRecommendationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? trend = null,Object? changePercent = null,Object? message = null,Object? suggestedDailyBudget = null,}) {
  return _then(_ForecastRecommendationModel(
trend: null == trend ? _self.trend : trend // ignore: cast_nullable_to_non_nullable
as String,changePercent: null == changePercent ? _self.changePercent : changePercent // ignore: cast_nullable_to_non_nullable
as double,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,suggestedDailyBudget: null == suggestedDailyBudget ? _self.suggestedDailyBudget : suggestedDailyBudget // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
