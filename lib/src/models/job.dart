library job;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:hacker_news_client/src/models/serializers.dart';
import 'package:hacker_news_client/src/models/story_type.dart';

part 'job.g.dart';

/// A Job that has been posted to Hacker News
abstract class Job implements Built<Job, JobBuilder> {
  Job._();

  factory Job([updates(JobBuilder b)]) = _$Job;

  String get by;

  int get id;

  int get score;

  @nullable
  String get text;

  DateTime get time;

  String get title;

  StoryType get type;

  @nullable
  String get url;

  String toJson() {
    return json.encode(serializers.serializeWith(Job.serializer, this));
  }

  static Job fromJson(String jsonString) {
    return serializers.deserializeWith(Job.serializer, json.decode(jsonString));
  }

  static Serializer<Job> get serializer => _$jobSerializer;
}
