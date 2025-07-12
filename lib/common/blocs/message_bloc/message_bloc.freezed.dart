// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MessageEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MessageEvent()';
}


}

/// @nodoc
class $MessageEventCopyWith<$Res>  {
$MessageEventCopyWith(MessageEvent _, $Res Function(MessageEvent) __);
}


/// @nodoc


class _LoadMessages implements MessageEvent {
  const _LoadMessages({required this.chatId});
  

 final  String chatId;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadMessagesCopyWith<_LoadMessages> get copyWith => __$LoadMessagesCopyWithImpl<_LoadMessages>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMessages&&(identical(other.chatId, chatId) || other.chatId == chatId));
}


@override
int get hashCode => Object.hash(runtimeType,chatId);

@override
String toString() {
  return 'MessageEvent.loadMessages(chatId: $chatId)';
}


}

/// @nodoc
abstract mixin class _$LoadMessagesCopyWith<$Res> implements $MessageEventCopyWith<$Res> {
  factory _$LoadMessagesCopyWith(_LoadMessages value, $Res Function(_LoadMessages) _then) = __$LoadMessagesCopyWithImpl;
@useResult
$Res call({
 String chatId
});




}
/// @nodoc
class __$LoadMessagesCopyWithImpl<$Res>
    implements _$LoadMessagesCopyWith<$Res> {
  __$LoadMessagesCopyWithImpl(this._self, this._then);

  final _LoadMessages _self;
  final $Res Function(_LoadMessages) _then;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? chatId = null,}) {
  return _then(_LoadMessages(
chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SendMessage implements MessageEvent {
  const _SendMessage({required this.messageEntity});
  

 final  MessageEntity messageEntity;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendMessageCopyWith<_SendMessage> get copyWith => __$SendMessageCopyWithImpl<_SendMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendMessage&&(identical(other.messageEntity, messageEntity) || other.messageEntity == messageEntity));
}


@override
int get hashCode => Object.hash(runtimeType,messageEntity);

@override
String toString() {
  return 'MessageEvent.sendMessage(messageEntity: $messageEntity)';
}


}

/// @nodoc
abstract mixin class _$SendMessageCopyWith<$Res> implements $MessageEventCopyWith<$Res> {
  factory _$SendMessageCopyWith(_SendMessage value, $Res Function(_SendMessage) _then) = __$SendMessageCopyWithImpl;
@useResult
$Res call({
 MessageEntity messageEntity
});


$MessageEntityCopyWith<$Res> get messageEntity;

}
/// @nodoc
class __$SendMessageCopyWithImpl<$Res>
    implements _$SendMessageCopyWith<$Res> {
  __$SendMessageCopyWithImpl(this._self, this._then);

  final _SendMessage _self;
  final $Res Function(_SendMessage) _then;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? messageEntity = null,}) {
  return _then(_SendMessage(
messageEntity: null == messageEntity ? _self.messageEntity : messageEntity // ignore: cast_nullable_to_non_nullable
as MessageEntity,
  ));
}

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageEntityCopyWith<$Res> get messageEntity {
  
  return $MessageEntityCopyWith<$Res>(_self.messageEntity, (value) {
    return _then(_self.copyWith(messageEntity: value));
  });
}
}

/// @nodoc


class _DeleteMessage implements MessageEvent {
  const _DeleteMessage({required this.messageId, required this.chatId});
  

 final  String messageId;
 final  String chatId;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteMessageCopyWith<_DeleteMessage> get copyWith => __$DeleteMessageCopyWithImpl<_DeleteMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteMessage&&(identical(other.messageId, messageId) || other.messageId == messageId)&&(identical(other.chatId, chatId) || other.chatId == chatId));
}


@override
int get hashCode => Object.hash(runtimeType,messageId,chatId);

@override
String toString() {
  return 'MessageEvent.deleteMessage(messageId: $messageId, chatId: $chatId)';
}


}

/// @nodoc
abstract mixin class _$DeleteMessageCopyWith<$Res> implements $MessageEventCopyWith<$Res> {
  factory _$DeleteMessageCopyWith(_DeleteMessage value, $Res Function(_DeleteMessage) _then) = __$DeleteMessageCopyWithImpl;
@useResult
$Res call({
 String messageId, String chatId
});




}
/// @nodoc
class __$DeleteMessageCopyWithImpl<$Res>
    implements _$DeleteMessageCopyWith<$Res> {
  __$DeleteMessageCopyWithImpl(this._self, this._then);

  final _DeleteMessage _self;
  final $Res Function(_DeleteMessage) _then;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? messageId = null,Object? chatId = null,}) {
  return _then(_DeleteMessage(
messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String,chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ReceivedMessage implements MessageEvent {
  const _ReceivedMessage({required this.messageEntity});
  

 final  MessageEntity messageEntity;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReceivedMessageCopyWith<_ReceivedMessage> get copyWith => __$ReceivedMessageCopyWithImpl<_ReceivedMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReceivedMessage&&(identical(other.messageEntity, messageEntity) || other.messageEntity == messageEntity));
}


@override
int get hashCode => Object.hash(runtimeType,messageEntity);

@override
String toString() {
  return 'MessageEvent._receivedMessage(messageEntity: $messageEntity)';
}


}

/// @nodoc
abstract mixin class _$ReceivedMessageCopyWith<$Res> implements $MessageEventCopyWith<$Res> {
  factory _$ReceivedMessageCopyWith(_ReceivedMessage value, $Res Function(_ReceivedMessage) _then) = __$ReceivedMessageCopyWithImpl;
@useResult
$Res call({
 MessageEntity messageEntity
});


$MessageEntityCopyWith<$Res> get messageEntity;

}
/// @nodoc
class __$ReceivedMessageCopyWithImpl<$Res>
    implements _$ReceivedMessageCopyWith<$Res> {
  __$ReceivedMessageCopyWithImpl(this._self, this._then);

  final _ReceivedMessage _self;
  final $Res Function(_ReceivedMessage) _then;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? messageEntity = null,}) {
  return _then(_ReceivedMessage(
messageEntity: null == messageEntity ? _self.messageEntity : messageEntity // ignore: cast_nullable_to_non_nullable
as MessageEntity,
  ));
}

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageEntityCopyWith<$Res> get messageEntity {
  
  return $MessageEntityCopyWith<$Res>(_self.messageEntity, (value) {
    return _then(_self.copyWith(messageEntity: value));
  });
}
}

/// @nodoc


class _ReceivedMessages implements MessageEvent {
  const _ReceivedMessages({required final  List<MessageEntity> messages}): _messages = messages;
  

 final  List<MessageEntity> _messages;
 List<MessageEntity> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}


/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReceivedMessagesCopyWith<_ReceivedMessages> get copyWith => __$ReceivedMessagesCopyWithImpl<_ReceivedMessages>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReceivedMessages&&const DeepCollectionEquality().equals(other._messages, _messages));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages));

@override
String toString() {
  return 'MessageEvent._receivedMessages(messages: $messages)';
}


}

/// @nodoc
abstract mixin class _$ReceivedMessagesCopyWith<$Res> implements $MessageEventCopyWith<$Res> {
  factory _$ReceivedMessagesCopyWith(_ReceivedMessages value, $Res Function(_ReceivedMessages) _then) = __$ReceivedMessagesCopyWithImpl;
@useResult
$Res call({
 List<MessageEntity> messages
});




}
/// @nodoc
class __$ReceivedMessagesCopyWithImpl<$Res>
    implements _$ReceivedMessagesCopyWith<$Res> {
  __$ReceivedMessagesCopyWithImpl(this._self, this._then);

  final _ReceivedMessages _self;
  final $Res Function(_ReceivedMessages) _then;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? messages = null,}) {
  return _then(_ReceivedMessages(
messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<MessageEntity>,
  ));
}


}

/// @nodoc


class _AddFailureState implements MessageEvent {
  const _AddFailureState({required this.message});
  

 final  String message;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddFailureStateCopyWith<_AddFailureState> get copyWith => __$AddFailureStateCopyWithImpl<_AddFailureState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddFailureState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'MessageEvent._addFailureState(message: $message)';
}


}

/// @nodoc
abstract mixin class _$AddFailureStateCopyWith<$Res> implements $MessageEventCopyWith<$Res> {
  factory _$AddFailureStateCopyWith(_AddFailureState value, $Res Function(_AddFailureState) _then) = __$AddFailureStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$AddFailureStateCopyWithImpl<$Res>
    implements _$AddFailureStateCopyWith<$Res> {
  __$AddFailureStateCopyWithImpl(this._self, this._then);

  final _AddFailureState _self;
  final $Res Function(_AddFailureState) _then;

/// Create a copy of MessageEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_AddFailureState(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$MessageState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MessageState()';
}


}

/// @nodoc
class $MessageStateCopyWith<$Res>  {
$MessageStateCopyWith(MessageState _, $Res Function(MessageState) __);
}


/// @nodoc


class Initial implements MessageState {
  const Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MessageState.initial()';
}


}




/// @nodoc


class Loading implements MessageState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MessageState.loading()';
}


}




/// @nodoc


class Loaded implements MessageState {
  const Loaded({required final  List<MessageEntity> messages}): _messages = messages;
  

 final  List<MessageEntity> _messages;
 List<MessageEntity> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}


/// Create a copy of MessageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadedCopyWith<Loaded> get copyWith => _$LoadedCopyWithImpl<Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loaded&&const DeepCollectionEquality().equals(other._messages, _messages));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages));

@override
String toString() {
  return 'MessageState.loaded(messages: $messages)';
}


}

/// @nodoc
abstract mixin class $LoadedCopyWith<$Res> implements $MessageStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) _then) = _$LoadedCopyWithImpl;
@useResult
$Res call({
 List<MessageEntity> messages
});




}
/// @nodoc
class _$LoadedCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(this._self, this._then);

  final Loaded _self;
  final $Res Function(Loaded) _then;

/// Create a copy of MessageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? messages = null,}) {
  return _then(Loaded(
messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<MessageEntity>,
  ));
}


}

/// @nodoc


class Failure implements MessageState {
  const Failure({required this.message});
  

 final  String message;

/// Create a copy of MessageState
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
  return 'MessageState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<$Res> implements $MessageStateCopyWith<$Res> {
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

/// Create a copy of MessageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(Failure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
