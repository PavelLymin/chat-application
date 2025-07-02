// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthDto {

 String? get uid; String get email; String? get password;
/// Create a copy of AuthDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthDtoCopyWith<AuthDto> get copyWith => _$AuthDtoCopyWithImpl<AuthDto>(this as AuthDto, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthDto&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,email,password);

@override
String toString() {
  return 'AuthDto(uid: $uid, email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $AuthDtoCopyWith<$Res>  {
  factory $AuthDtoCopyWith(AuthDto value, $Res Function(AuthDto) _then) = _$AuthDtoCopyWithImpl;
@useResult
$Res call({
 String? uid, String? password, String email
});




}
/// @nodoc
class _$AuthDtoCopyWithImpl<$Res>
    implements $AuthDtoCopyWith<$Res> {
  _$AuthDtoCopyWithImpl(this._self, this._then);

  final AuthDto _self;
  final $Res Function(AuthDto) _then;

/// Create a copy of AuthDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = freezed,Object? password = freezed,Object? email = null,}) {
  return _then(AuthDto(
uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


// dart format on
