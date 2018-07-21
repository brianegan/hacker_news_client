library summary;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hacker_news_client/src/models/serializers.dart';
import 'package:hacker_news_client/src/models/story_type.dart';

part 'summary.g.dart';

/// Provides a Summary of a Story, Comment, Job, Poll, Ask Hacker News Post, or
/// Show Hacker News post.
///
/// It is similar to a Story or Poll, but it does not contain a full list of
/// comments for those objects nor does it include the poll options for polls.
abstract class Summary implements Built<Summary, SummaryBuilder> {
  Summary._();

  factory Summary([updates(SummaryBuilder b)]) = _$Summary;

  String get by;

  @nullable
  int get descendants;

  int get id;

  BuiltList<int> get kids;

  @nullable
  int get score;

  DateTime get time;

  @nullable
  String get title;

  StoryType get type;

  @nullable
  String get url;

  String toJson() {
    return json.encode(serializers.serializeWith(Summary.serializer, this));
  }

  static Summary fromJson(String jsonString) {
    return serializers.deserializeWith(
        Summary.serializer, json.decode(jsonString));
  }

  static Serializer<Summary> get serializer => _$summarySerializer;
}
