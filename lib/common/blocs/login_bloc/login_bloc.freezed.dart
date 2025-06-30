// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent()';
}


}

/// @nodoc
class $LoginEventCopyWith<$Res>  {
$LoginEventCopyWith(LoginEvent _, $Res Function(LoginEvent) __);
}


/// @nodoc


class _SignIn implements LoginEvent {
  const _SignIn({required this.authModel});
  

 final  AuthModel authModel;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignInCopyWith<_SignIn> get copyWith => __$SignInCopyWithImpl<_SignIn>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignIn&&(identical(other.authModel, authModel) || other.authModel == authModel));
}


@override
int get hashCode => Object.hash(runtimeType,authModel);

@override
String toString() {
  return 'LoginEvent.signIn(authModel: $authModel)';
}


}

/// @nodoc
abstract mixin class _$SignInCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory _$SignInCopyWith(_SignIn value, $Res Function(_SignIn) _then) = __$SignInCopyWithImpl;
@useResult
$Res call({
 AuthModel authModel
});


$AuthModelCopyWith<$Res> get authModel;

}
/// @nodoc
class __$SignInCopyWithImpl<$Res>
    implements _$SignInCopyWith<$Res> {
  __$SignInCopyWithImpl(this._self, this._then);

  final _SignIn _self;
  final $Res Function(_SignIn) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? authModel = null,}) {
  return _then(_SignIn(
authModel: null == authModel ? _self.authModel : authModel // ignore: cast_nullable_to_non_nullable
as AuthModel,
  ));
}

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthModelCopyWith<$Res> get authModel {
  
  return $AuthModelCopyWith<$Res>(_self.authModel, (value) {
    return _then(_self.copyWith(authModel: value));
  });
}
}

/// @nodoc


class _SignUp implements LoginEvent {
  const _SignUp({required this.authModel});
  

 final  AuthModel authModel;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpCopyWith<_SignUp> get copyWith => __$SignUpCopyWithImpl<_SignUp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUp&&(identical(other.authModel, authModel) || other.authModel == authModel));
}


@override
int get hashCode => Object.hash(runtimeType,authModel);

@override
String toString() {
  return 'LoginEvent.signUp(authModel: $authModel)';
}


}

/// @nodoc
abstract mixin class _$SignUpCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory _$SignUpCopyWith(_SignUp value, $Res Function(_SignUp) _then) = __$SignUpCopyWithImpl;
@useResult
$Res call({
 AuthModel authModel
});


$AuthModelCopyWith<$Res> get authModel;

}
/// @nodoc
class __$SignUpCopyWithImpl<$Res>
    implements _$SignUpCopyWith<$Res> {
  __$SignUpCopyWithImpl(this._self, this._then);

  final _SignUp _self;
  final $Res Function(_SignUp) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? authModel = null,}) {
  return _then(_SignUp(
authModel: null == authModel ? _self.authModel : authModel // ignore: cast_nullable_to_non_nullable
as AuthModel,
  ));
}

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthModelCopyWith<$Res> get authModel {
  
  return $AuthModelCopyWith<$Res>(_self.authModel, (value) {
    return _then(_self.copyWith(authModel: value));
  });
}
}

/// @nodoc


class _SignOut implements LoginEvent {
  const _SignOut();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignOut);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.signOut()';
}


}




/// @nodoc
mixin _$LoginState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState()';
}


}

/// @nodoc
class $LoginStateCopyWith<$Res>  {
$LoginStateCopyWith(LoginState _, $Res Function(LoginState) __);
}


/// @nodoc


class Initial implements LoginState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState.initial()';
}


}




/// @nodoc


class Loading implements LoginState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState.loading()';
}


}




/// @nodoc


class Failure implements LoginState {
  const Failure({required this.message});
  

 final  String message;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<Failure> get copyWith => _$FailureCopyWithImpl<Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'LoginState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) _then) = _$FailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$FailureCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure _self;
  final $Res Function(Failure) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Failure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Success implements LoginState {
  const Success();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Success);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState.success()';
}


}




// dart format on
