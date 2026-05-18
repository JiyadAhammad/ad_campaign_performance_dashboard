// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CampaignDetailResponseModel {

 CampaignDetailModel get campaign;
/// Create a copy of CampaignDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignDetailResponseModelCopyWith<CampaignDetailResponseModel> get copyWith => _$CampaignDetailResponseModelCopyWithImpl<CampaignDetailResponseModel>(this as CampaignDetailResponseModel, _$identity);

  /// Serializes this CampaignDetailResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignDetailResponseModel&&(identical(other.campaign, campaign) || other.campaign == campaign));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,campaign);

@override
String toString() {
  return 'CampaignDetailResponseModel(campaign: $campaign)';
}


}

/// @nodoc
abstract mixin class $CampaignDetailResponseModelCopyWith<$Res>  {
  factory $CampaignDetailResponseModelCopyWith(CampaignDetailResponseModel value, $Res Function(CampaignDetailResponseModel) _then) = _$CampaignDetailResponseModelCopyWithImpl;
@useResult
$Res call({
 CampaignDetailModel campaign
});


$CampaignDetailModelCopyWith<$Res> get campaign;

}
/// @nodoc
class _$CampaignDetailResponseModelCopyWithImpl<$Res>
    implements $CampaignDetailResponseModelCopyWith<$Res> {
  _$CampaignDetailResponseModelCopyWithImpl(this._self, this._then);

  final CampaignDetailResponseModel _self;
  final $Res Function(CampaignDetailResponseModel) _then;

/// Create a copy of CampaignDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? campaign = null,}) {
  return _then(_self.copyWith(
campaign: null == campaign ? _self.campaign : campaign // ignore: cast_nullable_to_non_nullable
as CampaignDetailModel,
  ));
}
/// Create a copy of CampaignDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CampaignDetailModelCopyWith<$Res> get campaign {
  
  return $CampaignDetailModelCopyWith<$Res>(_self.campaign, (value) {
    return _then(_self.copyWith(campaign: value));
  });
}
}


/// Adds pattern-matching-related methods to [CampaignDetailResponseModel].
extension CampaignDetailResponseModelPatterns on CampaignDetailResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CampaignDetailResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CampaignDetailResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CampaignDetailResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CampaignDetailResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CampaignDetailResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CampaignDetailResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CampaignDetailModel campaign)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CampaignDetailResponseModel() when $default != null:
return $default(_that.campaign);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CampaignDetailModel campaign)  $default,) {final _that = this;
switch (_that) {
case _CampaignDetailResponseModel():
return $default(_that.campaign);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CampaignDetailModel campaign)?  $default,) {final _that = this;
switch (_that) {
case _CampaignDetailResponseModel() when $default != null:
return $default(_that.campaign);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CampaignDetailResponseModel implements CampaignDetailResponseModel {
  const _CampaignDetailResponseModel({required this.campaign});
  factory _CampaignDetailResponseModel.fromJson(Map<String, dynamic> json) => _$CampaignDetailResponseModelFromJson(json);

@override final  CampaignDetailModel campaign;

/// Create a copy of CampaignDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignDetailResponseModelCopyWith<_CampaignDetailResponseModel> get copyWith => __$CampaignDetailResponseModelCopyWithImpl<_CampaignDetailResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CampaignDetailResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CampaignDetailResponseModel&&(identical(other.campaign, campaign) || other.campaign == campaign));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,campaign);

@override
String toString() {
  return 'CampaignDetailResponseModel(campaign: $campaign)';
}


}

/// @nodoc
abstract mixin class _$CampaignDetailResponseModelCopyWith<$Res> implements $CampaignDetailResponseModelCopyWith<$Res> {
  factory _$CampaignDetailResponseModelCopyWith(_CampaignDetailResponseModel value, $Res Function(_CampaignDetailResponseModel) _then) = __$CampaignDetailResponseModelCopyWithImpl;
@override @useResult
$Res call({
 CampaignDetailModel campaign
});


@override $CampaignDetailModelCopyWith<$Res> get campaign;

}
/// @nodoc
class __$CampaignDetailResponseModelCopyWithImpl<$Res>
    implements _$CampaignDetailResponseModelCopyWith<$Res> {
  __$CampaignDetailResponseModelCopyWithImpl(this._self, this._then);

  final _CampaignDetailResponseModel _self;
  final $Res Function(_CampaignDetailResponseModel) _then;

/// Create a copy of CampaignDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? campaign = null,}) {
  return _then(_CampaignDetailResponseModel(
campaign: null == campaign ? _self.campaign : campaign // ignore: cast_nullable_to_non_nullable
as CampaignDetailModel,
  ));
}

/// Create a copy of CampaignDetailResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CampaignDetailModelCopyWith<$Res> get campaign {
  
  return $CampaignDetailModelCopyWith<$Res>(_self.campaign, (value) {
    return _then(_self.copyWith(campaign: value));
  });
}
}


/// @nodoc
mixin _$CampaignDetailModel {

 String get id; String get name;@JsonKey(unknownEnumValue: CampaignStatus.unknown) CampaignStatus get status;@JsonKey(unknownEnumValue: CampaignObjective.unknown) CampaignObjective get objective;@JsonKey(unknownEnumValue: AdChannel.Social) AdChannel get channel; int get budget; int get spend; int get impressions; int get clicks; int get conversions;@JsonKey(name: 'cost_per_click') double get costPerClick;@JsonKey(name: 'cost_per_conversion') double get costPerConversion;@JsonKey(name: 'start_date') String get startDate;@JsonKey(name: 'end_date') String get endDate; String get currency;@JsonKey(name: 'target_audience') TargetAudienceModel get targetAudience;@JsonKey(name: 'daily_budget') int get dailyBudget; double get ctr;@JsonKey(name: 'budget_utilization') double get budgetUtilization;
/// Create a copy of CampaignDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignDetailModelCopyWith<CampaignDetailModel> get copyWith => _$CampaignDetailModelCopyWithImpl<CampaignDetailModel>(this as CampaignDetailModel, _$identity);

  /// Serializes this CampaignDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.objective, objective) || other.objective == objective)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.budget, budget) || other.budget == budget)&&(identical(other.spend, spend) || other.spend == spend)&&(identical(other.impressions, impressions) || other.impressions == impressions)&&(identical(other.clicks, clicks) || other.clicks == clicks)&&(identical(other.conversions, conversions) || other.conversions == conversions)&&(identical(other.costPerClick, costPerClick) || other.costPerClick == costPerClick)&&(identical(other.costPerConversion, costPerConversion) || other.costPerConversion == costPerConversion)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.targetAudience, targetAudience) || other.targetAudience == targetAudience)&&(identical(other.dailyBudget, dailyBudget) || other.dailyBudget == dailyBudget)&&(identical(other.ctr, ctr) || other.ctr == ctr)&&(identical(other.budgetUtilization, budgetUtilization) || other.budgetUtilization == budgetUtilization));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,status,objective,channel,budget,spend,impressions,clicks,conversions,costPerClick,costPerConversion,startDate,endDate,currency,targetAudience,dailyBudget,ctr,budgetUtilization]);

@override
String toString() {
  return 'CampaignDetailModel(id: $id, name: $name, status: $status, objective: $objective, channel: $channel, budget: $budget, spend: $spend, impressions: $impressions, clicks: $clicks, conversions: $conversions, costPerClick: $costPerClick, costPerConversion: $costPerConversion, startDate: $startDate, endDate: $endDate, currency: $currency, targetAudience: $targetAudience, dailyBudget: $dailyBudget, ctr: $ctr, budgetUtilization: $budgetUtilization)';
}


}

/// @nodoc
abstract mixin class $CampaignDetailModelCopyWith<$Res>  {
  factory $CampaignDetailModelCopyWith(CampaignDetailModel value, $Res Function(CampaignDetailModel) _then) = _$CampaignDetailModelCopyWithImpl;
@useResult
$Res call({
 String id, String name,@JsonKey(unknownEnumValue: CampaignStatus.unknown) CampaignStatus status,@JsonKey(unknownEnumValue: CampaignObjective.unknown) CampaignObjective objective,@JsonKey(unknownEnumValue: AdChannel.Social) AdChannel channel, int budget, int spend, int impressions, int clicks, int conversions,@JsonKey(name: 'cost_per_click') double costPerClick,@JsonKey(name: 'cost_per_conversion') double costPerConversion,@JsonKey(name: 'start_date') String startDate,@JsonKey(name: 'end_date') String endDate, String currency,@JsonKey(name: 'target_audience') TargetAudienceModel targetAudience,@JsonKey(name: 'daily_budget') int dailyBudget, double ctr,@JsonKey(name: 'budget_utilization') double budgetUtilization
});


$TargetAudienceModelCopyWith<$Res> get targetAudience;

}
/// @nodoc
class _$CampaignDetailModelCopyWithImpl<$Res>
    implements $CampaignDetailModelCopyWith<$Res> {
  _$CampaignDetailModelCopyWithImpl(this._self, this._then);

  final CampaignDetailModel _self;
  final $Res Function(CampaignDetailModel) _then;

/// Create a copy of CampaignDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? status = null,Object? objective = null,Object? channel = null,Object? budget = null,Object? spend = null,Object? impressions = null,Object? clicks = null,Object? conversions = null,Object? costPerClick = null,Object? costPerConversion = null,Object? startDate = null,Object? endDate = null,Object? currency = null,Object? targetAudience = null,Object? dailyBudget = null,Object? ctr = null,Object? budgetUtilization = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CampaignStatus,objective: null == objective ? _self.objective : objective // ignore: cast_nullable_to_non_nullable
as CampaignObjective,channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as AdChannel,budget: null == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as int,spend: null == spend ? _self.spend : spend // ignore: cast_nullable_to_non_nullable
as int,impressions: null == impressions ? _self.impressions : impressions // ignore: cast_nullable_to_non_nullable
as int,clicks: null == clicks ? _self.clicks : clicks // ignore: cast_nullable_to_non_nullable
as int,conversions: null == conversions ? _self.conversions : conversions // ignore: cast_nullable_to_non_nullable
as int,costPerClick: null == costPerClick ? _self.costPerClick : costPerClick // ignore: cast_nullable_to_non_nullable
as double,costPerConversion: null == costPerConversion ? _self.costPerConversion : costPerConversion // ignore: cast_nullable_to_non_nullable
as double,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,targetAudience: null == targetAudience ? _self.targetAudience : targetAudience // ignore: cast_nullable_to_non_nullable
as TargetAudienceModel,dailyBudget: null == dailyBudget ? _self.dailyBudget : dailyBudget // ignore: cast_nullable_to_non_nullable
as int,ctr: null == ctr ? _self.ctr : ctr // ignore: cast_nullable_to_non_nullable
as double,budgetUtilization: null == budgetUtilization ? _self.budgetUtilization : budgetUtilization // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of CampaignDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TargetAudienceModelCopyWith<$Res> get targetAudience {
  
  return $TargetAudienceModelCopyWith<$Res>(_self.targetAudience, (value) {
    return _then(_self.copyWith(targetAudience: value));
  });
}
}


/// Adds pattern-matching-related methods to [CampaignDetailModel].
extension CampaignDetailModelPatterns on CampaignDetailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CampaignDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CampaignDetailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CampaignDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _CampaignDetailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CampaignDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _CampaignDetailModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(unknownEnumValue: CampaignStatus.unknown)  CampaignStatus status, @JsonKey(unknownEnumValue: CampaignObjective.unknown)  CampaignObjective objective, @JsonKey(unknownEnumValue: AdChannel.Social)  AdChannel channel,  int budget,  int spend,  int impressions,  int clicks,  int conversions, @JsonKey(name: 'cost_per_click')  double costPerClick, @JsonKey(name: 'cost_per_conversion')  double costPerConversion, @JsonKey(name: 'start_date')  String startDate, @JsonKey(name: 'end_date')  String endDate,  String currency, @JsonKey(name: 'target_audience')  TargetAudienceModel targetAudience, @JsonKey(name: 'daily_budget')  int dailyBudget,  double ctr, @JsonKey(name: 'budget_utilization')  double budgetUtilization)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CampaignDetailModel() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.objective,_that.channel,_that.budget,_that.spend,_that.impressions,_that.clicks,_that.conversions,_that.costPerClick,_that.costPerConversion,_that.startDate,_that.endDate,_that.currency,_that.targetAudience,_that.dailyBudget,_that.ctr,_that.budgetUtilization);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(unknownEnumValue: CampaignStatus.unknown)  CampaignStatus status, @JsonKey(unknownEnumValue: CampaignObjective.unknown)  CampaignObjective objective, @JsonKey(unknownEnumValue: AdChannel.Social)  AdChannel channel,  int budget,  int spend,  int impressions,  int clicks,  int conversions, @JsonKey(name: 'cost_per_click')  double costPerClick, @JsonKey(name: 'cost_per_conversion')  double costPerConversion, @JsonKey(name: 'start_date')  String startDate, @JsonKey(name: 'end_date')  String endDate,  String currency, @JsonKey(name: 'target_audience')  TargetAudienceModel targetAudience, @JsonKey(name: 'daily_budget')  int dailyBudget,  double ctr, @JsonKey(name: 'budget_utilization')  double budgetUtilization)  $default,) {final _that = this;
switch (_that) {
case _CampaignDetailModel():
return $default(_that.id,_that.name,_that.status,_that.objective,_that.channel,_that.budget,_that.spend,_that.impressions,_that.clicks,_that.conversions,_that.costPerClick,_that.costPerConversion,_that.startDate,_that.endDate,_that.currency,_that.targetAudience,_that.dailyBudget,_that.ctr,_that.budgetUtilization);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @JsonKey(unknownEnumValue: CampaignStatus.unknown)  CampaignStatus status, @JsonKey(unknownEnumValue: CampaignObjective.unknown)  CampaignObjective objective, @JsonKey(unknownEnumValue: AdChannel.Social)  AdChannel channel,  int budget,  int spend,  int impressions,  int clicks,  int conversions, @JsonKey(name: 'cost_per_click')  double costPerClick, @JsonKey(name: 'cost_per_conversion')  double costPerConversion, @JsonKey(name: 'start_date')  String startDate, @JsonKey(name: 'end_date')  String endDate,  String currency, @JsonKey(name: 'target_audience')  TargetAudienceModel targetAudience, @JsonKey(name: 'daily_budget')  int dailyBudget,  double ctr, @JsonKey(name: 'budget_utilization')  double budgetUtilization)?  $default,) {final _that = this;
switch (_that) {
case _CampaignDetailModel() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.objective,_that.channel,_that.budget,_that.spend,_that.impressions,_that.clicks,_that.conversions,_that.costPerClick,_that.costPerConversion,_that.startDate,_that.endDate,_that.currency,_that.targetAudience,_that.dailyBudget,_that.ctr,_that.budgetUtilization);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CampaignDetailModel implements CampaignDetailModel {
  const _CampaignDetailModel({required this.id, required this.name, @JsonKey(unknownEnumValue: CampaignStatus.unknown) required this.status, @JsonKey(unknownEnumValue: CampaignObjective.unknown) required this.objective, @JsonKey(unknownEnumValue: AdChannel.Social) required this.channel, required this.budget, required this.spend, required this.impressions, required this.clicks, required this.conversions, @JsonKey(name: 'cost_per_click') required this.costPerClick, @JsonKey(name: 'cost_per_conversion') required this.costPerConversion, @JsonKey(name: 'start_date') required this.startDate, @JsonKey(name: 'end_date') required this.endDate, required this.currency, @JsonKey(name: 'target_audience') required this.targetAudience, @JsonKey(name: 'daily_budget') required this.dailyBudget, required this.ctr, @JsonKey(name: 'budget_utilization') required this.budgetUtilization});
  factory _CampaignDetailModel.fromJson(Map<String, dynamic> json) => _$CampaignDetailModelFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey(unknownEnumValue: CampaignStatus.unknown) final  CampaignStatus status;
@override@JsonKey(unknownEnumValue: CampaignObjective.unknown) final  CampaignObjective objective;
@override@JsonKey(unknownEnumValue: AdChannel.Social) final  AdChannel channel;
@override final  int budget;
@override final  int spend;
@override final  int impressions;
@override final  int clicks;
@override final  int conversions;
@override@JsonKey(name: 'cost_per_click') final  double costPerClick;
@override@JsonKey(name: 'cost_per_conversion') final  double costPerConversion;
@override@JsonKey(name: 'start_date') final  String startDate;
@override@JsonKey(name: 'end_date') final  String endDate;
@override final  String currency;
@override@JsonKey(name: 'target_audience') final  TargetAudienceModel targetAudience;
@override@JsonKey(name: 'daily_budget') final  int dailyBudget;
@override final  double ctr;
@override@JsonKey(name: 'budget_utilization') final  double budgetUtilization;

/// Create a copy of CampaignDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignDetailModelCopyWith<_CampaignDetailModel> get copyWith => __$CampaignDetailModelCopyWithImpl<_CampaignDetailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CampaignDetailModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CampaignDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.objective, objective) || other.objective == objective)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.budget, budget) || other.budget == budget)&&(identical(other.spend, spend) || other.spend == spend)&&(identical(other.impressions, impressions) || other.impressions == impressions)&&(identical(other.clicks, clicks) || other.clicks == clicks)&&(identical(other.conversions, conversions) || other.conversions == conversions)&&(identical(other.costPerClick, costPerClick) || other.costPerClick == costPerClick)&&(identical(other.costPerConversion, costPerConversion) || other.costPerConversion == costPerConversion)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.targetAudience, targetAudience) || other.targetAudience == targetAudience)&&(identical(other.dailyBudget, dailyBudget) || other.dailyBudget == dailyBudget)&&(identical(other.ctr, ctr) || other.ctr == ctr)&&(identical(other.budgetUtilization, budgetUtilization) || other.budgetUtilization == budgetUtilization));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,status,objective,channel,budget,spend,impressions,clicks,conversions,costPerClick,costPerConversion,startDate,endDate,currency,targetAudience,dailyBudget,ctr,budgetUtilization]);

@override
String toString() {
  return 'CampaignDetailModel(id: $id, name: $name, status: $status, objective: $objective, channel: $channel, budget: $budget, spend: $spend, impressions: $impressions, clicks: $clicks, conversions: $conversions, costPerClick: $costPerClick, costPerConversion: $costPerConversion, startDate: $startDate, endDate: $endDate, currency: $currency, targetAudience: $targetAudience, dailyBudget: $dailyBudget, ctr: $ctr, budgetUtilization: $budgetUtilization)';
}


}

/// @nodoc
abstract mixin class _$CampaignDetailModelCopyWith<$Res> implements $CampaignDetailModelCopyWith<$Res> {
  factory _$CampaignDetailModelCopyWith(_CampaignDetailModel value, $Res Function(_CampaignDetailModel) _then) = __$CampaignDetailModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@JsonKey(unknownEnumValue: CampaignStatus.unknown) CampaignStatus status,@JsonKey(unknownEnumValue: CampaignObjective.unknown) CampaignObjective objective,@JsonKey(unknownEnumValue: AdChannel.Social) AdChannel channel, int budget, int spend, int impressions, int clicks, int conversions,@JsonKey(name: 'cost_per_click') double costPerClick,@JsonKey(name: 'cost_per_conversion') double costPerConversion,@JsonKey(name: 'start_date') String startDate,@JsonKey(name: 'end_date') String endDate, String currency,@JsonKey(name: 'target_audience') TargetAudienceModel targetAudience,@JsonKey(name: 'daily_budget') int dailyBudget, double ctr,@JsonKey(name: 'budget_utilization') double budgetUtilization
});


@override $TargetAudienceModelCopyWith<$Res> get targetAudience;

}
/// @nodoc
class __$CampaignDetailModelCopyWithImpl<$Res>
    implements _$CampaignDetailModelCopyWith<$Res> {
  __$CampaignDetailModelCopyWithImpl(this._self, this._then);

  final _CampaignDetailModel _self;
  final $Res Function(_CampaignDetailModel) _then;

/// Create a copy of CampaignDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? status = null,Object? objective = null,Object? channel = null,Object? budget = null,Object? spend = null,Object? impressions = null,Object? clicks = null,Object? conversions = null,Object? costPerClick = null,Object? costPerConversion = null,Object? startDate = null,Object? endDate = null,Object? currency = null,Object? targetAudience = null,Object? dailyBudget = null,Object? ctr = null,Object? budgetUtilization = null,}) {
  return _then(_CampaignDetailModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CampaignStatus,objective: null == objective ? _self.objective : objective // ignore: cast_nullable_to_non_nullable
as CampaignObjective,channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as AdChannel,budget: null == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as int,spend: null == spend ? _self.spend : spend // ignore: cast_nullable_to_non_nullable
as int,impressions: null == impressions ? _self.impressions : impressions // ignore: cast_nullable_to_non_nullable
as int,clicks: null == clicks ? _self.clicks : clicks // ignore: cast_nullable_to_non_nullable
as int,conversions: null == conversions ? _self.conversions : conversions // ignore: cast_nullable_to_non_nullable
as int,costPerClick: null == costPerClick ? _self.costPerClick : costPerClick // ignore: cast_nullable_to_non_nullable
as double,costPerConversion: null == costPerConversion ? _self.costPerConversion : costPerConversion // ignore: cast_nullable_to_non_nullable
as double,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,targetAudience: null == targetAudience ? _self.targetAudience : targetAudience // ignore: cast_nullable_to_non_nullable
as TargetAudienceModel,dailyBudget: null == dailyBudget ? _self.dailyBudget : dailyBudget // ignore: cast_nullable_to_non_nullable
as int,ctr: null == ctr ? _self.ctr : ctr // ignore: cast_nullable_to_non_nullable
as double,budgetUtilization: null == budgetUtilization ? _self.budgetUtilization : budgetUtilization // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of CampaignDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TargetAudienceModelCopyWith<$Res> get targetAudience {
  
  return $TargetAudienceModelCopyWith<$Res>(_self.targetAudience, (value) {
    return _then(_self.copyWith(targetAudience: value));
  });
}
}


/// @nodoc
mixin _$TargetAudienceModel {

@JsonKey(name: 'age_range') String get ageRange; List<String> get regions; List<String> get interests;
/// Create a copy of TargetAudienceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TargetAudienceModelCopyWith<TargetAudienceModel> get copyWith => _$TargetAudienceModelCopyWithImpl<TargetAudienceModel>(this as TargetAudienceModel, _$identity);

  /// Serializes this TargetAudienceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TargetAudienceModel&&(identical(other.ageRange, ageRange) || other.ageRange == ageRange)&&const DeepCollectionEquality().equals(other.regions, regions)&&const DeepCollectionEquality().equals(other.interests, interests));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ageRange,const DeepCollectionEquality().hash(regions),const DeepCollectionEquality().hash(interests));

@override
String toString() {
  return 'TargetAudienceModel(ageRange: $ageRange, regions: $regions, interests: $interests)';
}


}

/// @nodoc
abstract mixin class $TargetAudienceModelCopyWith<$Res>  {
  factory $TargetAudienceModelCopyWith(TargetAudienceModel value, $Res Function(TargetAudienceModel) _then) = _$TargetAudienceModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'age_range') String ageRange, List<String> regions, List<String> interests
});




}
/// @nodoc
class _$TargetAudienceModelCopyWithImpl<$Res>
    implements $TargetAudienceModelCopyWith<$Res> {
  _$TargetAudienceModelCopyWithImpl(this._self, this._then);

  final TargetAudienceModel _self;
  final $Res Function(TargetAudienceModel) _then;

/// Create a copy of TargetAudienceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ageRange = null,Object? regions = null,Object? interests = null,}) {
  return _then(_self.copyWith(
ageRange: null == ageRange ? _self.ageRange : ageRange // ignore: cast_nullable_to_non_nullable
as String,regions: null == regions ? _self.regions : regions // ignore: cast_nullable_to_non_nullable
as List<String>,interests: null == interests ? _self.interests : interests // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [TargetAudienceModel].
extension TargetAudienceModelPatterns on TargetAudienceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TargetAudienceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TargetAudienceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TargetAudienceModel value)  $default,){
final _that = this;
switch (_that) {
case _TargetAudienceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TargetAudienceModel value)?  $default,){
final _that = this;
switch (_that) {
case _TargetAudienceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'age_range')  String ageRange,  List<String> regions,  List<String> interests)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TargetAudienceModel() when $default != null:
return $default(_that.ageRange,_that.regions,_that.interests);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'age_range')  String ageRange,  List<String> regions,  List<String> interests)  $default,) {final _that = this;
switch (_that) {
case _TargetAudienceModel():
return $default(_that.ageRange,_that.regions,_that.interests);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'age_range')  String ageRange,  List<String> regions,  List<String> interests)?  $default,) {final _that = this;
switch (_that) {
case _TargetAudienceModel() when $default != null:
return $default(_that.ageRange,_that.regions,_that.interests);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TargetAudienceModel implements TargetAudienceModel {
  const _TargetAudienceModel({@JsonKey(name: 'age_range') required this.ageRange, required final  List<String> regions, required final  List<String> interests}): _regions = regions,_interests = interests;
  factory _TargetAudienceModel.fromJson(Map<String, dynamic> json) => _$TargetAudienceModelFromJson(json);

@override@JsonKey(name: 'age_range') final  String ageRange;
 final  List<String> _regions;
@override List<String> get regions {
  if (_regions is EqualUnmodifiableListView) return _regions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_regions);
}

 final  List<String> _interests;
@override List<String> get interests {
  if (_interests is EqualUnmodifiableListView) return _interests;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_interests);
}


/// Create a copy of TargetAudienceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TargetAudienceModelCopyWith<_TargetAudienceModel> get copyWith => __$TargetAudienceModelCopyWithImpl<_TargetAudienceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TargetAudienceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TargetAudienceModel&&(identical(other.ageRange, ageRange) || other.ageRange == ageRange)&&const DeepCollectionEquality().equals(other._regions, _regions)&&const DeepCollectionEquality().equals(other._interests, _interests));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ageRange,const DeepCollectionEquality().hash(_regions),const DeepCollectionEquality().hash(_interests));

@override
String toString() {
  return 'TargetAudienceModel(ageRange: $ageRange, regions: $regions, interests: $interests)';
}


}

/// @nodoc
abstract mixin class _$TargetAudienceModelCopyWith<$Res> implements $TargetAudienceModelCopyWith<$Res> {
  factory _$TargetAudienceModelCopyWith(_TargetAudienceModel value, $Res Function(_TargetAudienceModel) _then) = __$TargetAudienceModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'age_range') String ageRange, List<String> regions, List<String> interests
});




}
/// @nodoc
class __$TargetAudienceModelCopyWithImpl<$Res>
    implements _$TargetAudienceModelCopyWith<$Res> {
  __$TargetAudienceModelCopyWithImpl(this._self, this._then);

  final _TargetAudienceModel _self;
  final $Res Function(_TargetAudienceModel) _then;

/// Create a copy of TargetAudienceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ageRange = null,Object? regions = null,Object? interests = null,}) {
  return _then(_TargetAudienceModel(
ageRange: null == ageRange ? _self.ageRange : ageRange // ignore: cast_nullable_to_non_nullable
as String,regions: null == regions ? _self._regions : regions // ignore: cast_nullable_to_non_nullable
as List<String>,interests: null == interests ? _self._interests : interests // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
