// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anomaly_detect_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnomalyDetectResponseModel {

@JsonKey(name: 'checked_at') String get checkedAt;@JsonKey(name: 'anomaly_count') int get anomalyCount; List<AnomalyModel> get anomalies;
/// Create a copy of AnomalyDetectResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnomalyDetectResponseModelCopyWith<AnomalyDetectResponseModel> get copyWith => _$AnomalyDetectResponseModelCopyWithImpl<AnomalyDetectResponseModel>(this as AnomalyDetectResponseModel, _$identity);

  /// Serializes this AnomalyDetectResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnomalyDetectResponseModel&&(identical(other.checkedAt, checkedAt) || other.checkedAt == checkedAt)&&(identical(other.anomalyCount, anomalyCount) || other.anomalyCount == anomalyCount)&&const DeepCollectionEquality().equals(other.anomalies, anomalies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,checkedAt,anomalyCount,const DeepCollectionEquality().hash(anomalies));

@override
String toString() {
  return 'AnomalyDetectResponseModel(checkedAt: $checkedAt, anomalyCount: $anomalyCount, anomalies: $anomalies)';
}


}

/// @nodoc
abstract mixin class $AnomalyDetectResponseModelCopyWith<$Res>  {
  factory $AnomalyDetectResponseModelCopyWith(AnomalyDetectResponseModel value, $Res Function(AnomalyDetectResponseModel) _then) = _$AnomalyDetectResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'checked_at') String checkedAt,@JsonKey(name: 'anomaly_count') int anomalyCount, List<AnomalyModel> anomalies
});




}
/// @nodoc
class _$AnomalyDetectResponseModelCopyWithImpl<$Res>
    implements $AnomalyDetectResponseModelCopyWith<$Res> {
  _$AnomalyDetectResponseModelCopyWithImpl(this._self, this._then);

  final AnomalyDetectResponseModel _self;
  final $Res Function(AnomalyDetectResponseModel) _then;

/// Create a copy of AnomalyDetectResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? checkedAt = null,Object? anomalyCount = null,Object? anomalies = null,}) {
  return _then(_self.copyWith(
checkedAt: null == checkedAt ? _self.checkedAt : checkedAt // ignore: cast_nullable_to_non_nullable
as String,anomalyCount: null == anomalyCount ? _self.anomalyCount : anomalyCount // ignore: cast_nullable_to_non_nullable
as int,anomalies: null == anomalies ? _self.anomalies : anomalies // ignore: cast_nullable_to_non_nullable
as List<AnomalyModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [AnomalyDetectResponseModel].
extension AnomalyDetectResponseModelPatterns on AnomalyDetectResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnomalyDetectResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnomalyDetectResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnomalyDetectResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _AnomalyDetectResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnomalyDetectResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _AnomalyDetectResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'checked_at')  String checkedAt, @JsonKey(name: 'anomaly_count')  int anomalyCount,  List<AnomalyModel> anomalies)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnomalyDetectResponseModel() when $default != null:
return $default(_that.checkedAt,_that.anomalyCount,_that.anomalies);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'checked_at')  String checkedAt, @JsonKey(name: 'anomaly_count')  int anomalyCount,  List<AnomalyModel> anomalies)  $default,) {final _that = this;
switch (_that) {
case _AnomalyDetectResponseModel():
return $default(_that.checkedAt,_that.anomalyCount,_that.anomalies);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'checked_at')  String checkedAt, @JsonKey(name: 'anomaly_count')  int anomalyCount,  List<AnomalyModel> anomalies)?  $default,) {final _that = this;
switch (_that) {
case _AnomalyDetectResponseModel() when $default != null:
return $default(_that.checkedAt,_that.anomalyCount,_that.anomalies);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnomalyDetectResponseModel implements AnomalyDetectResponseModel {
  const _AnomalyDetectResponseModel({@JsonKey(name: 'checked_at') required this.checkedAt, @JsonKey(name: 'anomaly_count') required this.anomalyCount, required final  List<AnomalyModel> anomalies}): _anomalies = anomalies;
  factory _AnomalyDetectResponseModel.fromJson(Map<String, dynamic> json) => _$AnomalyDetectResponseModelFromJson(json);

@override@JsonKey(name: 'checked_at') final  String checkedAt;
@override@JsonKey(name: 'anomaly_count') final  int anomalyCount;
 final  List<AnomalyModel> _anomalies;
@override List<AnomalyModel> get anomalies {
  if (_anomalies is EqualUnmodifiableListView) return _anomalies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_anomalies);
}


/// Create a copy of AnomalyDetectResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnomalyDetectResponseModelCopyWith<_AnomalyDetectResponseModel> get copyWith => __$AnomalyDetectResponseModelCopyWithImpl<_AnomalyDetectResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnomalyDetectResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnomalyDetectResponseModel&&(identical(other.checkedAt, checkedAt) || other.checkedAt == checkedAt)&&(identical(other.anomalyCount, anomalyCount) || other.anomalyCount == anomalyCount)&&const DeepCollectionEquality().equals(other._anomalies, _anomalies));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,checkedAt,anomalyCount,const DeepCollectionEquality().hash(_anomalies));

@override
String toString() {
  return 'AnomalyDetectResponseModel(checkedAt: $checkedAt, anomalyCount: $anomalyCount, anomalies: $anomalies)';
}


}

/// @nodoc
abstract mixin class _$AnomalyDetectResponseModelCopyWith<$Res> implements $AnomalyDetectResponseModelCopyWith<$Res> {
  factory _$AnomalyDetectResponseModelCopyWith(_AnomalyDetectResponseModel value, $Res Function(_AnomalyDetectResponseModel) _then) = __$AnomalyDetectResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'checked_at') String checkedAt,@JsonKey(name: 'anomaly_count') int anomalyCount, List<AnomalyModel> anomalies
});




}
/// @nodoc
class __$AnomalyDetectResponseModelCopyWithImpl<$Res>
    implements _$AnomalyDetectResponseModelCopyWith<$Res> {
  __$AnomalyDetectResponseModelCopyWithImpl(this._self, this._then);

  final _AnomalyDetectResponseModel _self;
  final $Res Function(_AnomalyDetectResponseModel) _then;

/// Create a copy of AnomalyDetectResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? checkedAt = null,Object? anomalyCount = null,Object? anomalies = null,}) {
  return _then(_AnomalyDetectResponseModel(
checkedAt: null == checkedAt ? _self.checkedAt : checkedAt // ignore: cast_nullable_to_non_nullable
as String,anomalyCount: null == anomalyCount ? _self.anomalyCount : anomalyCount // ignore: cast_nullable_to_non_nullable
as int,anomalies: null == anomalies ? _self._anomalies : anomalies // ignore: cast_nullable_to_non_nullable
as List<AnomalyModel>,
  ));
}


}


/// @nodoc
mixin _$AnomalyModel {

 String get id;@JsonKey(name: 'campaign_id') String get campaignId;@JsonKey(name: 'campaign_name') String get campaignName;@JsonKey(name: 'detected_at') String get detectedAt; String get type; String get severity; String get metric;@JsonKey(name: 'actual_value', fromJson: _doubleFromJson) double get actualValue;@JsonKey(name: 'expected_value', fromJson: _doubleFromJson) double get expectedValue;@JsonKey(name: 'deviation_percent', fromJson: _doubleFromJson) double get deviationPercent; String get message;
/// Create a copy of AnomalyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnomalyModelCopyWith<AnomalyModel> get copyWith => _$AnomalyModelCopyWithImpl<AnomalyModel>(this as AnomalyModel, _$identity);

  /// Serializes this AnomalyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnomalyModel&&(identical(other.id, id) || other.id == id)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.campaignName, campaignName) || other.campaignName == campaignName)&&(identical(other.detectedAt, detectedAt) || other.detectedAt == detectedAt)&&(identical(other.type, type) || other.type == type)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.metric, metric) || other.metric == metric)&&(identical(other.actualValue, actualValue) || other.actualValue == actualValue)&&(identical(other.expectedValue, expectedValue) || other.expectedValue == expectedValue)&&(identical(other.deviationPercent, deviationPercent) || other.deviationPercent == deviationPercent)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,campaignId,campaignName,detectedAt,type,severity,metric,actualValue,expectedValue,deviationPercent,message);

@override
String toString() {
  return 'AnomalyModel(id: $id, campaignId: $campaignId, campaignName: $campaignName, detectedAt: $detectedAt, type: $type, severity: $severity, metric: $metric, actualValue: $actualValue, expectedValue: $expectedValue, deviationPercent: $deviationPercent, message: $message)';
}


}

/// @nodoc
abstract mixin class $AnomalyModelCopyWith<$Res>  {
  factory $AnomalyModelCopyWith(AnomalyModel value, $Res Function(AnomalyModel) _then) = _$AnomalyModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'campaign_id') String campaignId,@JsonKey(name: 'campaign_name') String campaignName,@JsonKey(name: 'detected_at') String detectedAt, String type, String severity, String metric,@JsonKey(name: 'actual_value', fromJson: _doubleFromJson) double actualValue,@JsonKey(name: 'expected_value', fromJson: _doubleFromJson) double expectedValue,@JsonKey(name: 'deviation_percent', fromJson: _doubleFromJson) double deviationPercent, String message
});




}
/// @nodoc
class _$AnomalyModelCopyWithImpl<$Res>
    implements $AnomalyModelCopyWith<$Res> {
  _$AnomalyModelCopyWithImpl(this._self, this._then);

  final AnomalyModel _self;
  final $Res Function(AnomalyModel) _then;

/// Create a copy of AnomalyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? campaignId = null,Object? campaignName = null,Object? detectedAt = null,Object? type = null,Object? severity = null,Object? metric = null,Object? actualValue = null,Object? expectedValue = null,Object? deviationPercent = null,Object? message = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,campaignName: null == campaignName ? _self.campaignName : campaignName // ignore: cast_nullable_to_non_nullable
as String,detectedAt: null == detectedAt ? _self.detectedAt : detectedAt // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String,metric: null == metric ? _self.metric : metric // ignore: cast_nullable_to_non_nullable
as String,actualValue: null == actualValue ? _self.actualValue : actualValue // ignore: cast_nullable_to_non_nullable
as double,expectedValue: null == expectedValue ? _self.expectedValue : expectedValue // ignore: cast_nullable_to_non_nullable
as double,deviationPercent: null == deviationPercent ? _self.deviationPercent : deviationPercent // ignore: cast_nullable_to_non_nullable
as double,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AnomalyModel].
extension AnomalyModelPatterns on AnomalyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnomalyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnomalyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnomalyModel value)  $default,){
final _that = this;
switch (_that) {
case _AnomalyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnomalyModel value)?  $default,){
final _that = this;
switch (_that) {
case _AnomalyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'campaign_id')  String campaignId, @JsonKey(name: 'campaign_name')  String campaignName, @JsonKey(name: 'detected_at')  String detectedAt,  String type,  String severity,  String metric, @JsonKey(name: 'actual_value', fromJson: _doubleFromJson)  double actualValue, @JsonKey(name: 'expected_value', fromJson: _doubleFromJson)  double expectedValue, @JsonKey(name: 'deviation_percent', fromJson: _doubleFromJson)  double deviationPercent,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnomalyModel() when $default != null:
return $default(_that.id,_that.campaignId,_that.campaignName,_that.detectedAt,_that.type,_that.severity,_that.metric,_that.actualValue,_that.expectedValue,_that.deviationPercent,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'campaign_id')  String campaignId, @JsonKey(name: 'campaign_name')  String campaignName, @JsonKey(name: 'detected_at')  String detectedAt,  String type,  String severity,  String metric, @JsonKey(name: 'actual_value', fromJson: _doubleFromJson)  double actualValue, @JsonKey(name: 'expected_value', fromJson: _doubleFromJson)  double expectedValue, @JsonKey(name: 'deviation_percent', fromJson: _doubleFromJson)  double deviationPercent,  String message)  $default,) {final _that = this;
switch (_that) {
case _AnomalyModel():
return $default(_that.id,_that.campaignId,_that.campaignName,_that.detectedAt,_that.type,_that.severity,_that.metric,_that.actualValue,_that.expectedValue,_that.deviationPercent,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'campaign_id')  String campaignId, @JsonKey(name: 'campaign_name')  String campaignName, @JsonKey(name: 'detected_at')  String detectedAt,  String type,  String severity,  String metric, @JsonKey(name: 'actual_value', fromJson: _doubleFromJson)  double actualValue, @JsonKey(name: 'expected_value', fromJson: _doubleFromJson)  double expectedValue, @JsonKey(name: 'deviation_percent', fromJson: _doubleFromJson)  double deviationPercent,  String message)?  $default,) {final _that = this;
switch (_that) {
case _AnomalyModel() when $default != null:
return $default(_that.id,_that.campaignId,_that.campaignName,_that.detectedAt,_that.type,_that.severity,_that.metric,_that.actualValue,_that.expectedValue,_that.deviationPercent,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnomalyModel implements AnomalyModel {
  const _AnomalyModel({required this.id, @JsonKey(name: 'campaign_id') required this.campaignId, @JsonKey(name: 'campaign_name') required this.campaignName, @JsonKey(name: 'detected_at') required this.detectedAt, required this.type, required this.severity, required this.metric, @JsonKey(name: 'actual_value', fromJson: _doubleFromJson) required this.actualValue, @JsonKey(name: 'expected_value', fromJson: _doubleFromJson) required this.expectedValue, @JsonKey(name: 'deviation_percent', fromJson: _doubleFromJson) required this.deviationPercent, required this.message});
  factory _AnomalyModel.fromJson(Map<String, dynamic> json) => _$AnomalyModelFromJson(json);

@override final  String id;
@override@JsonKey(name: 'campaign_id') final  String campaignId;
@override@JsonKey(name: 'campaign_name') final  String campaignName;
@override@JsonKey(name: 'detected_at') final  String detectedAt;
@override final  String type;
@override final  String severity;
@override final  String metric;
@override@JsonKey(name: 'actual_value', fromJson: _doubleFromJson) final  double actualValue;
@override@JsonKey(name: 'expected_value', fromJson: _doubleFromJson) final  double expectedValue;
@override@JsonKey(name: 'deviation_percent', fromJson: _doubleFromJson) final  double deviationPercent;
@override final  String message;

/// Create a copy of AnomalyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnomalyModelCopyWith<_AnomalyModel> get copyWith => __$AnomalyModelCopyWithImpl<_AnomalyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnomalyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnomalyModel&&(identical(other.id, id) || other.id == id)&&(identical(other.campaignId, campaignId) || other.campaignId == campaignId)&&(identical(other.campaignName, campaignName) || other.campaignName == campaignName)&&(identical(other.detectedAt, detectedAt) || other.detectedAt == detectedAt)&&(identical(other.type, type) || other.type == type)&&(identical(other.severity, severity) || other.severity == severity)&&(identical(other.metric, metric) || other.metric == metric)&&(identical(other.actualValue, actualValue) || other.actualValue == actualValue)&&(identical(other.expectedValue, expectedValue) || other.expectedValue == expectedValue)&&(identical(other.deviationPercent, deviationPercent) || other.deviationPercent == deviationPercent)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,campaignId,campaignName,detectedAt,type,severity,metric,actualValue,expectedValue,deviationPercent,message);

@override
String toString() {
  return 'AnomalyModel(id: $id, campaignId: $campaignId, campaignName: $campaignName, detectedAt: $detectedAt, type: $type, severity: $severity, metric: $metric, actualValue: $actualValue, expectedValue: $expectedValue, deviationPercent: $deviationPercent, message: $message)';
}


}

/// @nodoc
abstract mixin class _$AnomalyModelCopyWith<$Res> implements $AnomalyModelCopyWith<$Res> {
  factory _$AnomalyModelCopyWith(_AnomalyModel value, $Res Function(_AnomalyModel) _then) = __$AnomalyModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'campaign_id') String campaignId,@JsonKey(name: 'campaign_name') String campaignName,@JsonKey(name: 'detected_at') String detectedAt, String type, String severity, String metric,@JsonKey(name: 'actual_value', fromJson: _doubleFromJson) double actualValue,@JsonKey(name: 'expected_value', fromJson: _doubleFromJson) double expectedValue,@JsonKey(name: 'deviation_percent', fromJson: _doubleFromJson) double deviationPercent, String message
});




}
/// @nodoc
class __$AnomalyModelCopyWithImpl<$Res>
    implements _$AnomalyModelCopyWith<$Res> {
  __$AnomalyModelCopyWithImpl(this._self, this._then);

  final _AnomalyModel _self;
  final $Res Function(_AnomalyModel) _then;

/// Create a copy of AnomalyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? campaignId = null,Object? campaignName = null,Object? detectedAt = null,Object? type = null,Object? severity = null,Object? metric = null,Object? actualValue = null,Object? expectedValue = null,Object? deviationPercent = null,Object? message = null,}) {
  return _then(_AnomalyModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,campaignId: null == campaignId ? _self.campaignId : campaignId // ignore: cast_nullable_to_non_nullable
as String,campaignName: null == campaignName ? _self.campaignName : campaignName // ignore: cast_nullable_to_non_nullable
as String,detectedAt: null == detectedAt ? _self.detectedAt : detectedAt // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,severity: null == severity ? _self.severity : severity // ignore: cast_nullable_to_non_nullable
as String,metric: null == metric ? _self.metric : metric // ignore: cast_nullable_to_non_nullable
as String,actualValue: null == actualValue ? _self.actualValue : actualValue // ignore: cast_nullable_to_non_nullable
as double,expectedValue: null == expectedValue ? _self.expectedValue : expectedValue // ignore: cast_nullable_to_non_nullable
as double,deviationPercent: null == deviationPercent ? _self.deviationPercent : deviationPercent // ignore: cast_nullable_to_non_nullable
as double,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
