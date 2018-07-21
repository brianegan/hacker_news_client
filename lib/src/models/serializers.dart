library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:hacker_news_client/src/models/comment.dart';
import 'package:hacker_news_client/src/models/job.dart';
import 'package:hacker_news_client/src/models/poll.dart';
import 'package:hacker_news_client/src/models/poll_option.dart';
import 'package:hacker_news_client/src/models/story.dart';
import 'package:hacker_news_client/src/models/story_type.dart';
import 'package:hacker_news_client/src/models/summary.dart';
import 'package:hacker_news_client/src/models/user.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  Comment,
  Job,
  Poll,
  PollOption,
  Story,
  StoryType,
  Summary,
  User,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(new StandardJsonPlugin())).build();
