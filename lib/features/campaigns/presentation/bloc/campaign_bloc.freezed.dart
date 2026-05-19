// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CampaignEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CampaignEvent()';
}


}

/// @nodoc
class $CampaignEventCopyWith<$Res>  {
$CampaignEventCopyWith(CampaignEvent _, $Res Function(CampaignEvent) __);
}


/// Adds pattern-matching-related methods to [CampaignEvent].
extension CampaignEventPatterns on CampaignEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetCampaigns value)?  getCampaigns,TResult Function( _FilterCampaigns value)?  filterCampaigns,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetCampaigns() when getCampaigns != null:
return getCampaigns(_that);case _FilterCampaigns() when filterCampaigns != null:
return filterCampaigns(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetCampaigns value)  getCampaigns,required TResult Function( _FilterCampaigns value)  filterCampaigns,}){
final _that = this;
switch (_that) {
case _GetCampaigns():
return getCampaigns(_that);case _FilterCampaigns():
return filterCampaigns(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetCampaigns value)?  getCampaigns,TResult? Function( _FilterCampaigns value)?  filterCampaigns,}){
final _that = this;
switch (_that) {
case _GetCampaigns() when getCampaigns != null:
return getCampaigns(_that);case _FilterCampaigns() when filterCampaigns != null:
return filterCampaigns(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getCampaigns,TResult Function( CampaignFilter filter)?  filterCampaigns,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetCampaigns() when getCampaigns != null:
return getCampaigns();case _FilterCampaigns() when filterCampaigns != null:
return filterCampaigns(_that.filter);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getCampaigns,required TResult Function( CampaignFilter filter)  filterCampaigns,}) {final _that = this;
switch (_that) {
case _GetCampaigns():
return getCampaigns();case _FilterCampaigns():
return filterCampaigns(_that.filter);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getCampaigns,TResult? Function( CampaignFilter filter)?  filterCampaigns,}) {final _that = this;
switch (_that) {
case _GetCampaigns() when getCampaigns != null:
return getCampaigns();case _FilterCampaigns() when filterCampaigns != null:
return filterCampaigns(_that.filter);case _:
  return null;

}
}

}

/// @nodoc


class _GetCampaigns implements CampaignEvent {
  const _GetCampaigns();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCampaigns);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CampaignEvent.getCampaigns()';
}


}




/// @nodoc


class _FilterCampaigns implements CampaignEvent {
  const _FilterCampaigns(this.filter);
  

 final  CampaignFilter filter;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FilterCampaignsCopyWith<_FilterCampaigns> get copyWith => __$FilterCampaignsCopyWithImpl<_FilterCampaigns>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FilterCampaigns&&(identical(other.filter, filter) || other.filter == filter));
}


@override
int get hashCode => Object.hash(runtimeType,filter);

@override
String toString() {
  return 'CampaignEvent.filterCampaigns(filter: $filter)';
}


}

/// @nodoc
abstract mixin class _$FilterCampaignsCopyWith<$Res> implements $CampaignEventCopyWith<$Res> {
  factory _$FilterCampaignsCopyWith(_FilterCampaigns value, $Res Function(_FilterCampaigns) _then) = __$FilterCampaignsCopyWithImpl;
@useResult
$Res call({
 CampaignFilter filter
});




}
/// @nodoc
class __$FilterCampaignsCopyWithImpl<$Res>
    implements _$FilterCampaignsCopyWith<$Res> {
  __$FilterCampaignsCopyWithImpl(this._self, this._then);

  final _FilterCampaigns _self;
  final $Res Function(_FilterCampaigns) _then;

/// Create a copy of CampaignEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? filter = null,}) {
  return _then(_FilterCampaigns(
null == filter ? _self.filter : filter // ignore: cast_nullable_to_non_nullable
as CampaignFilter,
  ));
}


}

/// @nodoc
mixin _$CampaignState {

 bool get isLoading; List<CampaignEntity> get campaigns; List<CampaignEntity> get filteredCampaigns; CampaignFilter get selectedFilter; String? get successMessage; bool get isError; String? get errorMessage;
/// Create a copy of CampaignState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CampaignStateCopyWith<CampaignState> get copyWith => _$CampaignStateCopyWithImpl<CampaignState>(this as CampaignState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CampaignState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.campaigns, campaigns)&&const DeepCollectionEquality().equals(other.filteredCampaigns, filteredCampaigns)&&(identical(other.selectedFilter, selectedFilter) || other.selectedFilter == selectedFilter)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(campaigns),const DeepCollectionEquality().hash(filteredCampaigns),selectedFilter,successMessage,isError,errorMessage);

@override
String toString() {
  return 'CampaignState(isLoading: $isLoading, campaigns: $campaigns, filteredCampaigns: $filteredCampaigns, selectedFilter: $selectedFilter, successMessage: $successMessage, isError: $isError, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $CampaignStateCopyWith<$Res>  {
  factory $CampaignStateCopyWith(CampaignState value, $Res Function(CampaignState) _then) = _$CampaignStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<CampaignEntity> campaigns, List<CampaignEntity> filteredCampaigns, CampaignFilter selectedFilter, String? successMessage, bool isError, String? errorMessage
});




}
/// @nodoc
class _$CampaignStateCopyWithImpl<$Res>
    implements $CampaignStateCopyWith<$Res> {
  _$CampaignStateCopyWithImpl(this._self, this._then);

  final CampaignState _self;
  final $Res Function(CampaignState) _then;

/// Create a copy of CampaignState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? campaigns = null,Object? filteredCampaigns = null,Object? selectedFilter = null,Object? successMessage = freezed,Object? isError = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,campaigns: null == campaigns ? _self.campaigns : campaigns // ignore: cast_nullable_to_non_nullable
as List<CampaignEntity>,filteredCampaigns: null == filteredCampaigns ? _self.filteredCampaigns : filteredCampaigns // ignore: cast_nullable_to_non_nullable
as List<CampaignEntity>,selectedFilter: null == selectedFilter ? _self.selectedFilter : selectedFilter // ignore: cast_nullable_to_non_nullable
as CampaignFilter,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CampaignState].
extension CampaignStatePatterns on CampaignState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CampaignState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CampaignState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CampaignState value)  $default,){
final _that = this;
switch (_that) {
case _CampaignState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CampaignState value)?  $default,){
final _that = this;
switch (_that) {
case _CampaignState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<CampaignEntity> campaigns,  List<CampaignEntity> filteredCampaigns,  CampaignFilter selectedFilter,  String? successMessage,  bool isError,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CampaignState() when $default != null:
return $default(_that.isLoading,_that.campaigns,_that.filteredCampaigns,_that.selectedFilter,_that.successMessage,_that.isError,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<CampaignEntity> campaigns,  List<CampaignEntity> filteredCampaigns,  CampaignFilter selectedFilter,  String? successMessage,  bool isError,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _CampaignState():
return $default(_that.isLoading,_that.campaigns,_that.filteredCampaigns,_that.selectedFilter,_that.successMessage,_that.isError,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<CampaignEntity> campaigns,  List<CampaignEntity> filteredCampaigns,  CampaignFilter selectedFilter,  String? successMessage,  bool isError,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _CampaignState() when $default != null:
return $default(_that.isLoading,_that.campaigns,_that.filteredCampaigns,_that.selectedFilter,_that.successMessage,_that.isError,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _CampaignState implements CampaignState {
  const _CampaignState({this.isLoading = false, final  List<CampaignEntity> campaigns = const <CampaignEntity>[], final  List<CampaignEntity> filteredCampaigns = const <CampaignEntity>[], this.selectedFilter = CampaignFilter.all, this.successMessage, this.isError = false, this.errorMessage}): _campaigns = campaigns,_filteredCampaigns = filteredCampaigns;
  

@override@JsonKey() final  bool isLoading;
 final  List<CampaignEntity> _campaigns;
@override@JsonKey() List<CampaignEntity> get campaigns {
  if (_campaigns is EqualUnmodifiableListView) return _campaigns;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_campaigns);
}

 final  List<CampaignEntity> _filteredCampaigns;
@override@JsonKey() List<CampaignEntity> get filteredCampaigns {
  if (_filteredCampaigns is EqualUnmodifiableListView) return _filteredCampaigns;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filteredCampaigns);
}

@override@JsonKey() final  CampaignFilter selectedFilter;
@override final  String? successMessage;
@override@JsonKey() final  bool isError;
@override final  String? errorMessage;

/// Create a copy of CampaignState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CampaignStateCopyWith<_CampaignState> get copyWith => __$CampaignStateCopyWithImpl<_CampaignState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CampaignState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._campaigns, _campaigns)&&const DeepCollectionEquality().equals(other._filteredCampaigns, _filteredCampaigns)&&(identical(other.selectedFilter, selectedFilter) || other.selectedFilter == selectedFilter)&&(identical(other.successMessage, successMessage) || other.successMessage == successMessage)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_campaigns),const DeepCollectionEquality().hash(_filteredCampaigns),selectedFilter,successMessage,isError,errorMessage);

@override
String toString() {
  return 'CampaignState(isLoading: $isLoading, campaigns: $campaigns, filteredCampaigns: $filteredCampaigns, selectedFilter: $selectedFilter, successMessage: $successMessage, isError: $isError, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$CampaignStateCopyWith<$Res> implements $CampaignStateCopyWith<$Res> {
  factory _$CampaignStateCopyWith(_CampaignState value, $Res Function(_CampaignState) _then) = __$CampaignStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<CampaignEntity> campaigns, List<CampaignEntity> filteredCampaigns, CampaignFilter selectedFilter, String? successMessage, bool isError, String? errorMessage
});




}
/// @nodoc
class __$CampaignStateCopyWithImpl<$Res>
    implements _$CampaignStateCopyWith<$Res> {
  __$CampaignStateCopyWithImpl(this._self, this._then);

  final _CampaignState _self;
  final $Res Function(_CampaignState) _then;

/// Create a copy of CampaignState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? campaigns = null,Object? filteredCampaigns = null,Object? selectedFilter = null,Object? successMessage = freezed,Object? isError = null,Object? errorMessage = freezed,}) {
  return _then(_CampaignState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,campaigns: null == campaigns ? _self._campaigns : campaigns // ignore: cast_nullable_to_non_nullable
as List<CampaignEntity>,filteredCampaigns: null == filteredCampaigns ? _self._filteredCampaigns : filteredCampaigns // ignore: cast_nullable_to_non_nullable
as List<CampaignEntity>,selectedFilter: null == selectedFilter ? _self.selectedFilter : selectedFilter // ignore: cast_nullable_to_non_nullable
as CampaignFilter,successMessage: freezed == successMessage ? _self.successMessage : successMessage // ignore: cast_nullable_to_non_nullable
as String?,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
