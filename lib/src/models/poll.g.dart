// GENERATED CODE - DO NOT MODIFY BY HAND

part of poll;

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

Serializer<Poll> _$pollSerializer = new _$PollSerializer();

class _$PollSerializer implements StructuredSerializer<Poll> {
  @override
  final Iterable<Type> types = const [Poll, _$Poll];
  @override
  final String wireName = 'Poll';

  @override
  Iterable serialize(Serializers serializers, Poll object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'by',
      serializers.serialize(object.by, specifiedType: const FullType(String)),
      'descendants',
      serializers.serialize(object.descendants,
          specifiedType: const FullType(int)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'kids',
      serializers.serialize(object.kids,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
      'parts',
      serializers.serialize(object.parts,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
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
    if (object.comments != null) {
      result
        ..add('comments')
        ..add(serializers.serialize(object.comments,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Comment)])));
    }
    if (object.options != null) {
      result
        ..add('options')
        ..add(serializers.serialize(object.options,
            specifiedType:
                const FullType(BuiltList, const [const FullType(PollOption)])));
    }

    return result;
  }

  @override
  Poll deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PollBuilder();

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
        case 'descendants':
          result.descendants = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'kids':
          result.kids.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList);
          break;
        case 'comments':
          result.comments.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(Comment)])) as BuiltList);
          break;
        case 'parts':
          result.parts.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList);
          break;
        case 'options':
          result.options.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(PollOption)])) as BuiltList);
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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
      }
    }

    return result.build();
  }
}

class _$Poll extends Poll {
  @override
  final String by;
  @override
  final int descendants;
  @override
  final int id;
  @override
  final BuiltList<int> kids;
  @override
  final BuiltList<Comment> comments;
  @override
  final BuiltList<int> parts;
  @override
  final BuiltList<PollOption> options;
  @override
  final int score;
  @override
  final DateTime time;
  @override
  final String title;
  @override
  final StoryType type;

  factory _$Poll([void updates(PollBuilder b)]) =>
      (new PollBuilder()..update(updates)).build();

  _$Poll._(
      {this.by,
      this.descendants,
      this.id,
      this.kids,
      this.comments,
      this.parts,
      this.options,
      this.score,
      this.time,
      this.title,
      this.type})
      : super._() {
    if (by == null) throw new BuiltValueNullFieldError('Poll', 'by');
    if (descendants == null)
      throw new BuiltValueNullFieldError('Poll', 'descendants');
    if (id == null) throw new BuiltValueNullFieldError('Poll', 'id');
    if (kids == null) throw new BuiltValueNullFieldError('Poll', 'kids');
    if (parts == null) throw new BuiltValueNullFieldError('Poll', 'parts');
    if (score == null) throw new BuiltValueNullFieldError('Poll', 'score');
    if (time == null) throw new BuiltValueNullFieldError('Poll', 'time');
    if (title == null) throw new BuiltValueNullFieldError('Poll', 'title');
    if (type == null) throw new BuiltValueNullFieldError('Poll', 'type');
  }

  @override
  Poll rebuild(void updates(PollBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PollBuilder toBuilder() => new PollBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Poll) return false;
    return by == other.by &&
        descendants == other.descendants &&
        id == other.id &&
        kids == other.kids &&
        comments == other.comments &&
        parts == other.parts &&
        options == other.options &&
        score == other.score &&
        time == other.time &&
        title == other.title &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, by.hashCode),
                                            descendants.hashCode),
                                        id.hashCode),
                                    kids.hashCode),
                                comments.hashCode),
                            parts.hashCode),
                        options.hashCode),
                    score.hashCode),
                time.hashCode),
            title.hashCode),
        type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Poll')
          ..add('by', by)
          ..add('descendants', descendants)
          ..add('id', id)
          ..add('kids', kids)
          ..add('comments', comments)
          ..add('parts', parts)
          ..add('options', options)
          ..add('score', score)
          ..add('time', time)
          ..add('title', title)
          ..add('type', type))
        .toString();
  }
}

class PollBuilder implements Builder<Poll, PollBuilder> {
  _$Poll _$v;

  String _by;
  String get by => _$this._by;
  set by(String by) => _$this._by = by;

  int _descendants;
  int get descendants => _$this._descendants;
  set descendants(int descendants) => _$this._descendants = descendants;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  ListBuilder<int> _kids;
  ListBuilder<int> get kids => _$this._kids ??= new ListBuilder<int>();
  set kids(ListBuilder<int> kids) => _$this._kids = kids;

  ListBuilder<Comment> _comments;
  ListBuilder<Comment> get comments =>
      _$this._comments ??= new ListBuilder<Comment>();
  set comments(ListBuilder<Comment> comments) => _$this._comments = comments;

  ListBuilder<int> _parts;
  ListBuilder<int> get parts => _$this._parts ??= new ListBuilder<int>();
  set parts(ListBuilder<int> parts) => _$this._parts = parts;

  ListBuilder<PollOption> _options;
  ListBuilder<PollOption> get options =>
      _$this._options ??= new ListBuilder<PollOption>();
  set options(ListBuilder<PollOption> options) => _$this._options = options;

  int _score;
  int get score => _$this._score;
  set score(int score) => _$this._score = score;

  DateTime _time;
  DateTime get time => _$this._time;
  set time(DateTime time) => _$this._time = time;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  StoryType _type;
  StoryType get type => _$this._type;
  set type(StoryType type) => _$this._type = type;

  PollBuilder();

  PollBuilder get _$this {
    if (_$v != null) {
      _by = _$v.by;
      _descendants = _$v.descendants;
      _id = _$v.id;
      _kids = _$v.kids?.toBuilder();
      _comments = _$v.comments?.toBuilder();
      _parts = _$v.parts?.toBuilder();
      _options = _$v.options?.toBuilder();
      _score = _$v.score;
      _time = _$v.time;
      _title = _$v.title;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Poll other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Poll;
  }

  @override
  void update(void updates(PollBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Poll build() {
    _$Poll _$result;
    try {
      _$result = _$v ??
          new _$Poll._(
              by: by,
              descendants: descendants,
              id: id,
              kids: kids.build(),
              comments: _comments?.build(),
              parts: parts.build(),
              options: _options?.build(),
              score: score,
              time: time,
              title: title,
              type: type);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'kids';
        kids.build();
        _$failedField = 'comments';
        _comments?.build();
        _$failedField = 'parts';
        parts.build();
        _$failedField = 'options';
        _options?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Poll', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
