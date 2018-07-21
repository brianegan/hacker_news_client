library comment;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hacker_news_client/src/models/serializers.dart';
import 'package:hacker_news_client/src/models/story_type.dart';

part 'comment.g.dart';

abstract class Comment implements Built<Comment, CommentBuilder> {
  Comment._();

  factory Comment([updates(CommentBuilder b)]) = _$Comment;

  @nullable
  String get by;

  int get id;

  BuiltList<int> get kids;

  @nullable
  BuiltList<Comment> get comments;

  int get parent;

  @nullable
  String get text;

  DateTime get time;

  StoryType get type;

  String toJson() {
    return json.encode(serializers.serializeWith(Comment.serializer, this));
  }

  static Comment fromJson(String jsonString) {
    return serializers.deserializeWith(
        Comment.serializer, json.decode(jsonString));
  }

  static Serializer<Comment> get serializer => _$commentSerializer;
}
