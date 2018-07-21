// GENERATED CODE - DO NOT MODIFY BY HAND

part of story_type;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_returning_this
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

const StoryType _$comment = const StoryType._('comment');
const StoryType _$job = const StoryType._('job');
const StoryType _$poll = const StoryType._('poll');
const StoryType _$pollOpt = const StoryType._('pollOpt');
const StoryType _$story = const StoryType._('story');

StoryType _$storyTypeValueOf(String name) {
  switch (name) {
    case 'comment':
      return _$comment;
    case 'job':
      return _$job;
    case 'poll':
      return _$poll;
    case 'pollOpt':
      return _$pollOpt;
    case 'story':
      return _$story;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<StoryType> _$storyTypeValues =
    new BuiltSet<StoryType>(const <StoryType>[
  _$comment,
  _$job,
  _$poll,
  _$pollOpt,
  _$story,
]);

Serializer<StoryType> _$storyTypeSerializer = new _$StoryTypeSerializer();

class _$StoryTypeSerializer implements PrimitiveSerializer<StoryType> {
  static const Map<String, String> _toWire = const <String, String>{
    'pollOpt': 'pollopt',
  };
  static const Map<String, String> _fromWire = const <String, String>{
    'pollopt': 'pollOpt',
  };

  @override
  final Iterable<Type> types = const <Type>[StoryType];
  @override
  final String wireName = 'type';

  @override
  Object serialize(Serializers serializers, StoryType object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  StoryType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      StoryType.valueOf(_fromWire[serialized] ?? serialized as String);
}
