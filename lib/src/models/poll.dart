library poll;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hacker_news_client/src/models/comment.dart';
import 'package:hacker_news_client/src/models/poll_option.dart';
import 'package:hacker_news_client/src/models/serializers.dart';
import 'package:hacker_news_client/src/models/story_type.dart';

part 'poll.g.dart';

/// A Poll with all options and comments included
abstract class Poll implements Built<Poll, PollBuilder> {
  Poll._();

  factory Poll([updates(PollBuilder b)]) = _$Poll;

  String get by;

  int get descendants;

  int get id;

  BuiltList<int> get kids;

  @nullable
  BuiltList<Comment> get comments;

  BuiltList<int> get parts;

  @nullable
  BuiltList<PollOption> get options;

  int get score;

  DateTime get time;

  String get title;

  StoryType get type;

  String toJson() {
    return json.encode(serializers.serializeWith(Poll.serializer, this));
  }

  static Poll fromJson(String jsonString) {
    return serializers.deserializeWith(
        Poll.serializer, json.decode(jsonString));
  }

  static Serializer<Poll> get serializer => _$pollSerializer;
}
