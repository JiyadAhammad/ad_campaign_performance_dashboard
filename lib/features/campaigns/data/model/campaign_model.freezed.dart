// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CampaignResponseModel {

 List<CampaignModel> get campaigns; int get total;
/// Create a copy of CampaignResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignResponseModelCopyWith<CampaignResponseModel> get copyWith => _$CampaignResponseModelCopyWithImpl<CampaignResponseModel>(this as CampaignResponseModel, _$identity);

  /// Serializes this CampaignResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignResponseModel&&const DeepCollectionEquality().equals(other.campaigns, campaigns)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(campaigns),total);

@override
String toString() {
  return 'CampaignResponseModel(campaigns: $campaigns, total: $total)';
}


}

/// @nodoc
abstract mixin class $CampaignResponseModelCopyWith<$Res>  {
  factory $CampaignResponseModelCopyWith(CampaignResponseModel value, $Res Function(CampaignResponseModel) _then) = _$CampaignResponseModelCopyWithImpl;
@useResult
$Res call({
 List<CampaignModel> campaigns, int total
});




}
/// @nodoc
class _$CampaignResponseModelCopyWithImpl<$Res>
    implements $CampaignResponseModelCopyWith<$Res> {
  _$CampaignResponseModelCopyWithImpl(this._self, this._then);

  final CampaignResponseModel _self;
  final $Res Function(CampaignResponseModel) _then;

/// Create a copy of CampaignResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? campaigns = null,Object? total = null,}) {
  return _then(_self.copyWith(
campaigns: null == campaigns ? _self.campaigns : campaigns // ignore: cast_nullable_to_non_nullable
as List<CampaignModel>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CampaignResponseModel].
extension CampaignResponseModelPatterns on CampaignResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CampaignResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CampaignResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CampaignResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CampaignResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CampaignResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CampaignResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CampaignModel> campaigns,  int total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CampaignResponseModel() when $default != null:
return $default(_that.campaigns,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CampaignModel> campaigns,  int total)  $default,) {final _that = this;
switch (_that) {
case _CampaignResponseModel():
return $default(_that.campaigns,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CampaignModel> campaigns,  int total)?  $default,) {final _that = this;
switch (_that) {
case _CampaignResponseModel() when $default != null:
return $default(_that.campaigns,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CampaignResponseModel implements CampaignResponseModel {
  const _CampaignResponseModel({required final  List<CampaignModel> campaigns, required this.total}): _campaigns = campaigns;
  factory _CampaignResponseModel.fromJson(Map<String, dynamic> json) => _$CampaignResponseModelFromJson(json);

 final  List<CampaignModel> _campaigns;
@override List<CampaignModel> get campaigns {
  if (_campaigns is EqualUnmodifiableListView) return _campaigns;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_campaigns);
}

@override final  int total;

/// Create a copy of CampaignResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignResponseModelCopyWith<_CampaignResponseModel> get copyWith => __$CampaignResponseModelCopyWithImpl<_CampaignResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CampaignResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CampaignResponseModel&&const DeepCollectionEquality().equals(other._campaigns, _campaigns)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_campaigns),total);

@override
String toString() {
  return 'CampaignResponseModel(campaigns: $campaigns, total: $total)';
}


}

/// @nodoc
abstract mixin class _$CampaignResponseModelCopyWith<$Res> implements $CampaignResponseModelCopyWith<$Res> {
  factory _$CampaignResponseModelCopyWith(_CampaignResponseModel value, $Res Function(_CampaignResponseModel) _then) = __$CampaignResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<CampaignModel> campaigns, int total
});




}
/// @nodoc
class __$CampaignResponseModelCopyWithImpl<$Res>
    implements _$CampaignResponseModelCopyWith<$Res> {
  __$CampaignResponseModelCopyWithImpl(this._self, this._then);

  final _CampaignResponseModel _self;
  final $Res Function(_CampaignResponseModel) _then;

/// Create a copy of CampaignResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? campaigns = null,Object? total = null,}) {
  return _then(_CampaignResponseModel(
campaigns: null == campaigns ? _self._campaigns : campaigns // ignore: cast_nullable_to_non_nullable
as List<CampaignModel>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$CampaignModel {

 String get id; String get name; String get status; String get objective; String get channel; int get budget; int get spend; int get impressions; int get clicks;@JsonKey(name: 'start_date') String get startDate;@JsonKey(name: 'end_date') String get endDate; String get currency; String get thumbnail; double get ctr;@JsonKey(name: 'budget_utilization', fromJson: _doubleFromJson) double get budgetUtilization;
/// Create a copy of CampaignModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignModelCopyWith<CampaignModel> get copyWith => _$CampaignModelCopyWithImpl<CampaignModel>(this as CampaignModel, _$identity);

  /// Serializes this CampaignModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.objective, objective) || other.objective == objective)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.budget, budget) || other.budget == budget)&&(identical(other.spend, spend) || other.spend == spend)&&(identical(other.impressions, impressions) || other.impressions == impressions)&&(identical(other.clicks, clicks) || other.clicks == clicks)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.ctr, ctr) || other.ctr == ctr)&&(identical(other.budgetUtilization, budgetUtilization) || other.budgetUtilization == budgetUtilization));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,status,objective,channel,budget,spend,impressions,clicks,startDate,endDate,currency,thumbnail,ctr,budgetUtilization);

@override
String toString() {
  return 'CampaignModel(id: $id, name: $name, status: $status, objective: $objective, channel: $channel, budget: $budget, spend: $spend, impressions: $impressions, clicks: $clicks, startDate: $startDate, endDate: $endDate, currency: $currency, thumbnail: $thumbnail, ctr: $ctr, budgetUtilization: $budgetUtilization)';
}


}

/// @nodoc
abstract mixin class $CampaignModelCopyWith<$Res>  {
  factory $CampaignModelCopyWith(CampaignModel value, $Res Function(CampaignModel) _then) = _$CampaignModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String status, String objective, String channel, int budget, int spend, int impressions, int clicks,@JsonKey(name: 'start_date') String startDate,@JsonKey(name: 'end_date') String endDate, String currency, String thumbnail, double ctr,@JsonKey(name: 'budget_utilization', fromJson: _doubleFromJson) double budgetUtilization
});




}
/// @nodoc
class _$CampaignModelCopyWithImpl<$Res>
    implements $CampaignModelCopyWith<$Res> {
  _$CampaignModelCopyWithImpl(this._self, this._then);

  final CampaignModel _self;
  final $Res Function(CampaignModel) _then;

/// Create a copy of CampaignModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? status = null,Object? objective = null,Object? channel = null,Object? budget = null,Object? spend = null,Object? impressions = null,Object? clicks = null,Object? startDate = null,Object? endDate = null,Object? currency = null,Object? thumbnail = null,Object? ctr = null,Object? budgetUtilization = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,objective: null == objective ? _self.objective : objective // ignore: cast_nullable_to_non_nullable
as String,channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as String,budget: null == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as int,spend: null == spend ? _self.spend : spend // ignore: cast_nullable_to_non_nullable
as int,impressions: null == impressions ? _self.impressions : impressions // ignore: cast_nullable_to_non_nullable
as int,clicks: null == clicks ? _self.clicks : clicks // ignore: cast_nullable_to_non_nullable
as int,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,ctr: null == ctr ? _self.ctr : ctr // ignore: cast_nullable_to_non_nullable
as double,budgetUtilization: null == budgetUtilization ? _self.budgetUtilization : budgetUtilization // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CampaignModel].
extension CampaignModelPatterns on CampaignModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CampaignModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CampaignModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CampaignModel value)  $default,){
final _that = this;
switch (_that) {
case _CampaignModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CampaignModel value)?  $default,){
final _that = this;
switch (_that) {
case _CampaignModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String status,  String objective,  String channel,  int budget,  int spend,  int impressions,  int clicks, @JsonKey(name: 'start_date')  String startDate, @JsonKey(name: 'end_date')  String endDate,  String currency,  String thumbnail,  double ctr, @JsonKey(name: 'budget_utilization', fromJson: _doubleFromJson)  double budgetUtilization)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CampaignModel() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.objective,_that.channel,_that.budget,_that.spend,_that.impressions,_that.clicks,_that.startDate,_that.endDate,_that.currency,_that.thumbnail,_that.ctr,_that.budgetUtilization);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String status,  String objective,  String channel,  int budget,  int spend,  int impressions,  int clicks, @JsonKey(name: 'start_date')  String startDate, @JsonKey(name: 'end_date')  String endDate,  String currency,  String thumbnail,  double ctr, @JsonKey(name: 'budget_utilization', fromJson: _doubleFromJson)  double budgetUtilization)  $default,) {final _that = this;
switch (_that) {
case _CampaignModel():
return $default(_that.id,_that.name,_that.status,_that.objective,_that.channel,_that.budget,_that.spend,_that.impressions,_that.clicks,_that.startDate,_that.endDate,_that.currency,_that.thumbnail,_that.ctr,_that.budgetUtilization);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String status,  String objective,  String channel,  int budget,  int spend,  int impressions,  int clicks, @JsonKey(name: 'start_date')  String startDate, @JsonKey(name: 'end_date')  String endDate,  String currency,  String thumbnail,  double ctr, @JsonKey(name: 'budget_utilization', fromJson: _doubleFromJson)  double budgetUtilization)?  $default,) {final _that = this;
switch (_that) {
case _CampaignModel() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.objective,_that.channel,_that.budget,_that.spend,_that.impressions,_that.clicks,_that.startDate,_that.endDate,_that.currency,_that.thumbnail,_that.ctr,_that.budgetUtilization);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CampaignModel implements CampaignModel {
  const _CampaignModel({required this.id, required this.name, required this.status, required this.objective, required this.channel, required this.budget, required this.spend, required this.impressions, required this.clicks, @JsonKey(name: 'start_date') required this.startDate, @JsonKey(name: 'end_date') required this.endDate, required this.currency, required this.thumbnail, required this.ctr, @JsonKey(name: 'budget_utilization', fromJson: _doubleFromJson) required this.budgetUtilization});
  factory _CampaignModel.fromJson(Map<String, dynamic> json) => _$CampaignModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String status;
@override final  String objective;
@override final  String channel;
@override final  int budget;
@override final  int spend;
@override final  int impressions;
@override final  int clicks;
@override@JsonKey(name: 'start_date') final  String startDate;
@override@JsonKey(name: 'end_date') final  String endDate;
@override final  String currency;
@override final  String thumbnail;
@override final  double ctr;
@override@JsonKey(name: 'budget_utilization', fromJson: _doubleFromJson) final  double budgetUtilization;

/// Create a copy of CampaignModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignModelCopyWith<_CampaignModel> get copyWith => __$CampaignModelCopyWithImpl<_CampaignModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CampaignModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CampaignModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.objective, objective) || other.objective == objective)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.budget, budget) || other.budget == budget)&&(identical(other.spend, spend) || other.spend == spend)&&(identical(other.impressions, impressions) || other.impressions == impressions)&&(identical(other.clicks, clicks) || other.clicks == clicks)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.ctr, ctr) || other.ctr == ctr)&&(identical(other.budgetUtilization, budgetUtilization) || other.budgetUtilization == budgetUtilization));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,status,objective,channel,budget,spend,impressions,clicks,startDate,endDate,currency,thumbnail,ctr,budgetUtilization);

@override
String toString() {
  return 'CampaignModel(id: $id, name: $name, status: $status, objective: $objective, channel: $channel, budget: $budget, spend: $spend, impressions: $impressions, clicks: $clicks, startDate: $startDate, endDate: $endDate, currency: $currency, thumbnail: $thumbnail, ctr: $ctr, budgetUtilization: $budgetUtilization)';
}


}

/// @nodoc
abstract mixin class _$CampaignModelCopyWith<$Res> implements $CampaignModelCopyWith<$Res> {
  factory _$CampaignModelCopyWith(_CampaignModel value, $Res Function(_CampaignModel) _then) = __$CampaignModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String status, String objective, String channel, int budget, int spend, int impressions, int clicks,@JsonKey(name: 'start_date') String startDate,@JsonKey(name: 'end_date') String endDate, String currency, String thumbnail, double ctr,@JsonKey(name: 'budget_utilization', fromJson: _doubleFromJson) double budgetUtilization
});




}
/// @nodoc
class __$CampaignModelCopyWithImpl<$Res>
    implements _$CampaignModelCopyWith<$Res> {
  __$CampaignModelCopyWithImpl(this._self, this._then);

  final _CampaignModel _self;
  final $Res Function(_CampaignModel) _then;

/// Create a copy of CampaignModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? status = null,Object? objective = null,Object? channel = null,Object? budget = null,Object? spend = null,Object? impressions = null,Object? clicks = null,Object? startDate = null,Object? endDate = null,Object? currency = null,Object? thumbnail = null,Object? ctr = null,Object? budgetUtilization = null,}) {
  return _then(_CampaignModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,objective: null == objective ? _self.objective : objective // ignore: cast_nullable_to_non_nullable
as String,channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as String,budget: null == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as int,spend: null == spend ? _self.spend : spend // ignore: cast_nullable_to_non_nullable
as int,impressions: null == impressions ? _self.impressions : impressions // ignore: cast_nullable_to_non_nullable
as int,clicks: null == clicks ? _self.clicks : clicks // ignore: cast_nullable_to_non_nullable
as int,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,endDate: null == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,ctr: null == ctr ? _self.ctr : ctr // ignore: cast_nullable_to_non_nullable
as double,budgetUtilization: null == budgetUtilization ? _self.budgetUtilization : budgetUtilization // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
