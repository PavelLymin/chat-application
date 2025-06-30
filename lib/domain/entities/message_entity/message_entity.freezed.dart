// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MessageEntity {

 String get message;
/// Create a copy of MessageEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageEntityCopyWith<MessageEntity> get copyWith => _$MessageEntityCopyWithImpl<MessageEntity>(this as MessageEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageEntity&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'MessageEntity(message: $message)';
}


}

/// @nodoc
abstract mixin class $MessageEntityCopyWith<$Res>  {
  factory $MessageEntityCopyWith(MessageEntity value, $Res Function(MessageEntity) _then) = _$MessageEntityCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$MessageEntityCopyWithImpl<$Res>
    implements $MessageEntityCopyWith<$Res> {
  _$MessageEntityCopyWithImpl(this._self, this._then);

  final MessageEntity _self;
  final $Res Function(MessageEntity) _then;

/// Create a copy of MessageEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(MessageEntity(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


// dart format on
