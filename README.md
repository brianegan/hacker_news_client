# hacker_news_client

[![Build Status](https://travis-ci.org/brianegan/hacker_news_client.svg?branch=master)](https://travis-ci.org/brianegan/hacker_news_client) [![codecov](https://codecov.io/gh/brianegan/hacker_news_client/branch/master/graph/badge.svg)](https://codecov.io/gh/brianegan/hacker_news_client)

A Dart client for the Hacker News API. Works on Flutter, Server, and Web.

## Usage

No need for an API key or anything, just create an instance of the client and fetch results!

```dart
// Create a client and pass in an http.Client.
//   - For Flutter & Server, use IOClient
//   - For Web, use BrowserClient
final client = HackerNewsClient(IOClient());

// Fetch the top stories. Does not include all comments.
final topStories = await client.topStories();

// Fetch the newest stories. Does not include all comments
final newStories = await client.newStories();

// Fetch a story with all comments
final newStories = await client.story(8863);
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/brianegan/hacker_news_client/issues
