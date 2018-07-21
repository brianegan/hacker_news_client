library story_type;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'story_type.g.dart';

@BuiltValueEnum(wireName: 'type')
class StoryType extends EnumClass {
  static Serializer<StoryType> get serializer => _$storyTypeSerializer;

  static const StoryType comment = _$comment;
  static const StoryType job = _$job;
  static const StoryType poll = _$poll;
  @BuiltValueEnumConst(wireName: 'pollopt')
  static const StoryType pollOpt = _$pollOpt;
  static const StoryType story = _$story;

  const StoryType._(String name) : super(name);

  static BuiltSet<StoryType> get values => _$storyTypeValues;

  static StoryType valueOf(String name) => _$storyTypeValueOf(name);
}
