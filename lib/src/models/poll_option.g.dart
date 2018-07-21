// GENERATED CODE - DO NOT MODIFY BY HAND

part of poll_part;

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

Serializer<PollOption> _$pollOptionSerializer = new _$PollOptionSerializer();

class _$PollOptionSerializer implements StructuredSerializer<PollOption> {
  @override
  final Iterable<Type> types = const [PollOption, _$PollOption];
  @override
  final String wireName = 'PollOption';

  @override
  Iterable serialize(Serializers serializers, PollOption object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'poll',
      serializers.serialize(object.poll, specifiedType: const FullType(int)),
      'score',
      serializers.serialize(object.score, specifiedType: const FullType(int)),
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
      'time',
      serializers.serialize(object.time,
          specifiedType: const FullType(DateTime)),
      'type',
      serializers.serialize(object.type,
          specifiedType: const FullType(StoryType)),
    ];
    if (object.by != null) {
      result
        ..add('by')
        ..add(serializers.serialize(object.by,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  PollOption deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PollOptionBuilder();

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
        case 'poll':
          result.poll = serializers.deserialize(value,
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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(StoryType)) as StoryType;
          break;
      }
    }

    return result.build();
  }
}

class _$PollOption extends PollOption {
  @override
  final String by;
  @override
  final int id;
  @override
  final int poll;
  @override
  final int score;
  @override
  final String text;
  @override
  final DateTime time;
  @override
  final StoryType type;

  factory _$PollOption([void updates(PollOptionBuilder b)]) =>
      (new PollOptionBuilder()..update(updates)).build();

  _$PollOption._(
      {this.by,
      this.id,
      this.poll,
      this.score,
      this.text,
      this.time,
      this.type})
      : super._() {
    if (id == null) throw new BuiltValueNullFieldError('PollOption', 'id');
    if (poll == null) throw new BuiltValueNullFieldError('PollOption', 'poll');
    if (score == null)
      throw new BuiltValueNullFieldError('PollOption', 'score');
    if (text == null) throw new BuiltValueNullFieldError('PollOption', 'text');
    if (time == null) throw new BuiltValueNullFieldError('PollOption', 'time');
    if (type == null) throw new BuiltValueNullFieldError('PollOption', 'type');
  }

  @override
  PollOption rebuild(void updates(PollOptionBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  PollOptionBuilder toBuilder() => new PollOptionBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! PollOption) return false;
    return by == other.by &&
        id == other.id &&
        poll == other.poll &&
        score == other.score &&
        text == other.text &&
        time == other.time &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc($jc(0, by.hashCode), id.hashCode), poll.hashCode),
                    score.hashCode),
                text.hashCode),
            time.hashCode),
        type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PollOption')
          ..add('by', by)
          ..add('id', id)
          ..add('poll', poll)
          ..add('score', score)
          ..add('text', text)
          ..add('time', time)
          ..add('type', type))
        .toString();
  }
}

class PollOptionBuilder implements Builder<PollOption, PollOptionBuilder> {
  _$PollOption _$v;

  String _by;
  String get by => _$this._by;
  set by(String by) => _$this._by = by;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _poll;
  int get poll => _$this._poll;
  set poll(int poll) => _$this._poll = poll;

  int _score;
  int get score => _$this._score;
  set score(int score) => _$this._score = score;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  DateTime _time;
  DateTime get time => _$this._time;
  set time(DateTime time) => _$this._time = time;

  StoryType _type;
  StoryType get type => _$this._type;
  set type(StoryType type) => _$this._type = type;

  PollOptionBuilder();

  PollOptionBuilder get _$this {
    if (_$v != null) {
      _by = _$v.by;
      _id = _$v.id;
      _poll = _$v.poll;
      _score = _$v.score;
      _text = _$v.text;
      _time = _$v.time;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PollOption other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$PollOption;
  }

  @override
  void update(void updates(PollOptionBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$PollOption build() {
    final _$result = _$v ??
        new _$PollOption._(
            by: by,
            id: id,
            poll: poll,
            score: score,
            text: text,
            time: time,
            type: type);
    replace(_$result);
    return _$result;
  }
}
