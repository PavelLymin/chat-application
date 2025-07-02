// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthModel {

<<<<<<< Updated upstream
 String get email; String get password;
/// Create a copy of AuthModel
=======
 String? get uid; String get email; String? get password;
/// Create a copy of AuthEntity
>>>>>>> Stashed changes
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthModelCopyWith<AuthModel> get copyWith => _$AuthModelCopyWithImpl<AuthModel>(this as AuthModel, _$identity);



@override
bool operator ==(Object other) {
<<<<<<< Updated upstream
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthModel&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
=======
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEntity&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
>>>>>>> Stashed changes
}


@override
int get hashCode => Object.hash(runtimeType,uid,email,password);

@override
String toString() {
<<<<<<< Updated upstream
  return 'AuthModel(email: $email, password: $password)';
=======
  return 'AuthEntity(uid: $uid, email: $email, password: $password)';
>>>>>>> Stashed changes
}


}

/// @nodoc
abstract mixin class $AuthModelCopyWith<$Res>  {
  factory $AuthModelCopyWith(AuthModel value, $Res Function(AuthModel) _then) = _$AuthModelCopyWithImpl;
@useResult
$Res call({
 String? uid, String? password, String email
});




}
/// @nodoc
class _$AuthModelCopyWithImpl<$Res>
    implements $AuthModelCopyWith<$Res> {
  _$AuthModelCopyWithImpl(this._self, this._then);

  final AuthModel _self;
  final $Res Function(AuthModel) _then;

/// Create a copy of AuthModel
/// with the given fields replaced by the non-null parameter values.
<<<<<<< Updated upstream
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? password = null,}) {
  return _then(AuthModel(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
=======
@pragma('vm:prefer-inline') @override $Res call({Object? uid = freezed,Object? password = freezed,Object? email = null,}) {
  return _then(AuthEntity(
uid: freezed == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
>>>>>>> Stashed changes
as String,
  ));
}

}


// dart format on
