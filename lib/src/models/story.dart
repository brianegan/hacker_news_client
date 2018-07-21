library story;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hacker_news_client/src/models/comment.dart';
import 'package:hacker_news_client/src/models/serializers.dart';
import 'package:hacker_news_client/src/models/story_type.dart';

part 'story.g.dart';

/// A Story can represent a Story, Ask Hacker News Post, Show Hacker News Post.
abstract class Story implements Built<Story, StoryBuilder> {
  Story._();

  factory Story([updates(StoryBuilder b)]) = _$Story;

  String get by;

  @nullable
  int get descendants;

  int get id;

  BuiltList<int> get kids;

  @memoized
  int get score;

  DateTime get time;

  @nullable
  String get title;

  StoryType get type;

  @nullable
  String get url;

  @nullable
  BuiltList<Comment> get comments;

  @nullable
  @memoized
  int get numComments {
    return comments == null ? null : _countComments(comments);
  }

  static int _countComments(BuiltList<Comment> comments) {
    if (comments == null) return 0;

    return comments.fold(0, (prev, comment) {
      return prev + 1 + _countComments(comment.comments);
    });
  }

  String toJson() {
    return json.encode(serializers.serializeWith(Story.serializer, this));
  }

  static Story fromJson(String jsonString) {
    return serializers.deserializeWith(
        Story.serializer, json.decode(jsonString));
  }

  static Serializer<Story> get serializer => _$storySerializer;
}
