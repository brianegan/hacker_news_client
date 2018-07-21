// GENERATED CODE - DO NOT MODIFY BY HAND

part of job;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_returning_this
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

Serializer<Job> _$jobSerializer = new _$JobSerializer();

class _$JobSerializer implements StructuredSerializer<Job> {
  @override
  final Iterable<Type> types = const [Job, _$Job];
  @override
  final String wireName = 'Job';

  @override
  Iterable serialize(Serializers serializers, Job object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'by',
      serializers.serialize(object.by, specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'score',
      serializers.serialize(object.score, specifiedType: const FullType(int)),
      'time',
      serializers.serialize(object.time,
          specifiedType: const FullType(DateTime)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(StoryType)),
    ];
    if (object.text != null) {
      result
        ..add('text')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Job deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new JobBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'by':
          result.by = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(StoryType)) as StoryType;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Job extends Job {
  @override
  final String by;
  @override
  final int id;
  @override
  final int score;
  @override
  final String text;
  @override
  final DateTime time;
  @override
  final String title;
  @override
  final StoryType type;
  @override
  final String url;

  factory _$Job([void updates(JobBuilder b)]) =>
      (new JobBuilder()..update(updates)).build();

  _$Job._(
      {this.by,
      this.id,
      this.score,
      this.text,
      this.time,
      this.title,
      this.type,
      this.url})
      : super._() {
    if (by == null) throw new BuiltValueNullFieldError('Job', 'by');
    if (id == null) throw new BuiltValueNullFieldError('Job', 'id');
    if (score == null) throw new BuiltValueNullFieldError('Job', 'score');
    if (time == null) throw new BuiltValueNullFieldError('Job', 'time');
    if (title == null) throw new BuiltValueNullFieldError('Job', 'title');
    if (type == null) throw new BuiltValueNullFieldError('Job', 'type');
  }

  @override
  Job rebuild(void updates(JobBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  JobBuilder toBuilder() => new JobBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Job) return false;
    return by == other.by &&
        id == other.id &&
        score == other.score &&
        text == other.text &&
        time == other.time &&
        title == other.title &&
        type == other.type &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, by.hashCode), id.hashCode),
                            score.hashCode),
                        text.hashCode),
                    time.hashCode),
                title.hashCode),
            type.hashCode),
        url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Job')
          ..add('by', by)
          ..add('id', id)
          ..add('score', score)
          ..add('text', text)
          ..add('time', time)
          ..add('title', title)
          ..add('type', type)
          ..add('url', url))
        .toString();
  }
}

class JobBuilder implements Builder<Job, JobBuilder> {
  _$Job _$v;

  String _by;
  String get by => _$this._by;
  set by(String by) => _$this._by = by;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _score;
  int get score => _$this._score;
  set score(int score) => _$this._score = score;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  DateTime _time;
  DateTime get time => _$this._time;
  set time(DateTime time) => _$this._time = time;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  StoryType _type;
  StoryType get type => _$this._type;
  set type(StoryType type) => _$this._type = type;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  JobBuilder();

  JobBuilder get _$this {
    if (_$v != null) {
      _by = _$v.by;
      _id = _$v.id;
      _score = _$v.score;
      _text = _$v.text;
      _time = _$v.time;
      _title = _$v.title;
      _type = _$v.type;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Job other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Job;
  }

  @override
  void update(void updates(JobBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Job build() {
    final _$result = _$v ??
        new _$Job._(
            by: by,
            id: id,
            score: score,
            text: text,
            time: time,
            title: title,
            type: type,
            url: url);
    replace(_$result);
    return _$result;
  }
}
