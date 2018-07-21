import 'package:hacker_news_client/hacker_news_client.dart';
import 'package:http/http.dart';
import 'package:test/test.dart';

void main() {
  group('HackerNewsClient', () {
    test('fetches top stories', () async {
      final client = HackerNewsClient(IOClient());
      final stories = await client.topStories();

      expect(stories, TypeMatcher<List<Summary>>());
    });

    test('fetches best stories', () async {
      final client = HackerNewsClient(IOClient());

      expect(await client.bestStories(), TypeMatcher<List<Summary>>());
    });

    test('fetches new stories', () async {
      final client = HackerNewsClient(IOClient());

      expect(await client.newStories(), TypeMatcher<List<Summary>>());
    });

    test('fetches show stories', () async {
      final client = HackerNewsClient(IOClient());

      expect(await client.showHackerNews(), TypeMatcher<List<Summary>>());
    });

    test('fetches ask HackerNews', () async {
      final client = HackerNewsClient(IOClient());

      expect(await client.askHackerNews(), TypeMatcher<List<Summary>>());
    });

    test('fetches jobs', () async {
      final client = HackerNewsClient(IOClient());

      expect(await client.jobs(), TypeMatcher<List<Job>>());
    });

    test('fetches a page of summaries starting with the max item', () async {
      final client = HackerNewsClient(IOClient());
      final maxItem = await client.maxItem();
      final summaries = await client.pagedSummaries(maxItem, pageSize: 5);

      expect(summaries.length, 5);
    });

    test('fetches a story with comments', () async {
      final client = HackerNewsClient(IOClient());
      final story = await client.story(8863);

      expect(story, TypeMatcher<Story>());

      // Recursively fetches comments
      expect(story.comments.first.comments, isNotEmpty);
      expect(story.comments.first.comments.first.comments, isNotEmpty);
    });

    test('fetches a poll with poll options and comments', () async {
      final client = HackerNewsClient(IOClient());
      final poll = await client.poll(126809);

      expect(poll, TypeMatcher<Poll>());

      // Recursively fetches comments
      expect(poll.options, isNotEmpty);
      expect(poll.comments, isNotEmpty);
    });

    test('fetches a user', () async {
      final client = HackerNewsClient(IOClient());
      final poll = await client.user('phillywiggins');

      expect(poll, TypeMatcher<User>());
    });
  });
}
