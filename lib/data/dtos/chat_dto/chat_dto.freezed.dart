// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatDto {

 String get id; String get participantName; String? get lastMessage; DateTime? get lastMessageTime;
/// Create a copy of ChatDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatDtoCopyWith<ChatDto> get copyWith => _$ChatDtoCopyWithImpl<ChatDto>(this as ChatDto, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatDto&&(identical(other.id, id) || other.id == id)&&(identical(other.participantName, participantName) || other.participantName == participantName)&&(identical(other.lastMessage, lastMessage) || other.lastMessage == lastMessage)&&(identical(other.lastMessageTime, lastMessageTime) || other.lastMessageTime == lastMessageTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,participantName,lastMessage,lastMessageTime);

@override
String toString() {
  return 'ChatDto(id: $id, participantName: $participantName, lastMessage: $lastMessage, lastMessageTime: $lastMessageTime)';
}


}

/// @nodoc
abstract mixin class $ChatDtoCopyWith<$Res>  {
  factory $ChatDtoCopyWith(ChatDto value, $Res Function(ChatDto) _then) = _$ChatDtoCopyWithImpl;
@useResult
$Res call({
 String id, String participantName, String? lastMessage, DateTime? lastMessageTime
});




}
/// @nodoc
class _$ChatDtoCopyWithImpl<$Res>
    implements $ChatDtoCopyWith<$Res> {
  _$ChatDtoCopyWithImpl(this._self, this._then);

  final ChatDto _self;
  final $Res Function(ChatDto) _then;

/// Create a copy of ChatDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? participantName = null,Object? lastMessage = freezed,Object? lastMessageTime = freezed,}) {
  return _then(ChatDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,participantName: null == participantName ? _self.participantName : participantName // ignore: cast_nullable_to_non_nullable
as String,lastMessage: freezed == lastMessage ? _self.lastMessage : lastMessage // ignore: cast_nullable_to_non_nullable
as String?,lastMessageTime: freezed == lastMessageTime ? _self.lastMessageTime : lastMessageTime // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


// dart format on
