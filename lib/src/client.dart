import 'dart:async';
import 'dart:convert';

import 'package:built_collection/src/list.dart';
import 'package:hacker_news_client/src/models/comment.dart';
import 'package:hacker_news_client/src/models/job.dart';
import 'package:hacker_news_client/src/models/poll.dart';
import 'package:hacker_news_client/src/models/poll_option.dart';
import 'package:hacker_news_client/src/models/story.dart';
import 'package:hacker_news_client/src/models/summary.dart';
import 'package:hacker_news_client/src/models/user.dart';
import 'package:http/http.dart';

class HackerNewsClient {
  final Client httpClient;

  HackerNewsClient(this.httpClient);

  Future<List<Summary>> topStories() => _summariesByType('topstories');

  Future<List<Summary>> newStories() => _summariesByType('newstories');

  Future<List<Summary>> bestStories() => _summariesByType('beststories');

  Future<List<Summary>> showHackerNews() => _summariesByType('showstories');

  Future<List<Summary>> askHackerNews() async {
    final response = await httpClient.get(typeUrl('askstories'));

    if (response.statusCode == 200) {
      final ids = (json.decode(response.body) as List).cast<int>();
      final stories = await Future.wait(ids.map((id) => summary(id)));

      return stories.where((story) => story != null).toList();
    } else {
      throw Exception("Couldn't load questions");
    }
  }

  Future<int> maxItem() async {
    final response = await httpClient
        .get('https://hacker-news.firebaseio.com/v0/maxitem.json');

    return int.parse(response.body);
  }

  Future<List<Summary>> pagedSummaries(int firstItemId, {pageSize = 50}) =>
      summaries(List.generate<int>(pageSize, (i) => firstItemId - i));

  Future<List<Summary>> summaries(List<int> ids) async {
    final summaries = await Future.wait(ids.map((id) => summary(id)));

    return summaries.where((summary) => summary != null).toList();
  }

  Future<List<Comment>> comments(Iterable<int> ids) async {
    final topComments = await Future.wait(ids.map((id) => comment(id)));

    return Future.wait(topComments.map((comment) async {
      if (comment.kids.isNotEmpty) {
        var childComments = await comments(comment.kids);

        return comment.rebuild((b) => b..comments = ListBuilder(childComments));
      } else {
        return comment;
      }
    }));
  }

  Future<List<Job>> jobs() async {
    final response = await httpClient.get(typeUrl('jobstories'));

    if (response.statusCode == 200) {
      final ids = (json.decode(response.body) as List).cast<int>();
      final jobs = await Future.wait(ids.map((id) => job(id)));

      return jobs.where((job) => job != null).toList();
    } else {
      throw Exception("Couldn't load jobs");
    }
  }

  Future<List<Summary>> _summariesByType(String type) async {
    final response = await httpClient.get(typeUrl(type));

    if (response.statusCode == 200) {
      return summaries((json.decode(response.body) as List).cast<int>());
    } else {
      throw Exception("Couldn't load $type");
    }
  }

  Future<Summary> summary(int id) async {
    final response = await httpClient.get(itemUrl(id));

    if (response.body == 'null') {
      return null;
    } else {
      return Summary.fromJson(response.body);
    }
  }

  Future<Story> story(int id) async {
    final response = await httpClient.get(itemUrl(id));

    if (response.body == 'null') {
      return null;
    } else {
      final story = Story.fromJson(response.body);

      if (story.kids.isNotEmpty) {
        final List<Comment> allComments = await comments(story.kids);

        return story.rebuild((b) => b..comments = ListBuilder(allComments));
      } else {
        return story;
      }
    }
  }

  Future<Comment> comment(int id) async {
    final response = await httpClient.get(itemUrl(id));

    return Comment.fromJson(response.body);
  }

  Future<User> user(String id) async {
    final response = await httpClient
        .get('https://hacker-news.firebaseio.com/v0/user/$id.json');

    return User.fromJson(response.body);
  }

  Future<Job> job(int id) async {
    final response = await httpClient.get(itemUrl(id));

    return Job.fromJson(response.body);
  }

  Future<Poll> poll(int id) async {
    final response = await httpClient.get(itemUrl(id));
    final poll = Poll.fromJson(response.body);
    final List<PollOption> allOptions =
        await Future.wait(poll.parts.map((id) => pollOption(id)));
    final List<Comment> allComments = await comments(poll.kids);

    return poll.rebuild((b) => b
      ..comments = ListBuilder(allComments)
      ..options = ListBuilder(allOptions));
  }

  Future<PollOption> pollOption(int id) async {
    final response = await httpClient.get(itemUrl(id));

    return PollOption.fromJson(response.body);
  }

  String itemUrl(int id) =>
      'https://hacker-news.firebaseio.com/v0/item/$id.json';

  String typeUrl(String type) =>
      'https://hacker-news.firebaseio.com/v0/$type.json';
}
