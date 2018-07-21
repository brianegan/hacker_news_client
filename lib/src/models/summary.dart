library summary;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hacker_news_client/src/models/serializers.dart';
import 'package:hacker_news_client/src/models/story_type.dart';

part 'summary.g.dart';

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
