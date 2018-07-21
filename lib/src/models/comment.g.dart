// GENERATED CODE - DO NOT MODIFY BY HAND

part of comment;

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

Serializer<Comment> _$commentSerializer = new _$CommentSerializer();

class _$CommentSerializer implements StructuredSerializer<Comment> {
  @override
  final Iterable<Type> types = const [Comment, _$Comment];
  @override
  final String wireName = 'Comment';

  @override
  Iterable serialize(Serializers serializers, Comment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'kids',
      serializers.serialize(object.kids,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
      'parent',
      serializers.serialize(object.parent, specifiedType: const FullType(int)),
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
    if (object.comments != null) {
      result
        ..add('comments')
        ..add(serializers.serialize(object.comments,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Comment)])));
    }
    if (object.text != null) {
      result
        ..add('text')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Comment deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommentBuilder();

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
        case 'parent':
          result.parent = serializers.deserialize(value,
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

class _$Comment extends Comment {
  @override
  final String by;
  @override
  final int id;
  @override
  final BuiltList<int> kids;
  @override
  final BuiltList<Comment> comments;
  @override
  final int parent;
  @override
  final String text;
  @override
  final DateTime time;
  @override
  final StoryType type;

  factory _$Comment([void updates(CommentBuilder b)]) =>
      (new CommentBuilder()..update(updates)).build();

  _$Comment._(
      {this.by,
      this.id,
      this.kids,
      this.comments,
      this.parent,
      this.text,
      this.time,
      this.type})
      : super._() {
    if (id == null) throw new BuiltValueNullFieldError('Comment', 'id');
    if (kids == null) throw new BuiltValueNullFieldError('Comment', 'kids');
    if (parent == null) throw new BuiltValueNullFieldError('Comment', 'parent');
    if (time == null) throw new BuiltValueNullFieldError('Comment', 'time');
    if (type == null) throw new BuiltValueNullFieldError('Comment', 'type');
  }

  @override
  Comment rebuild(void updates(CommentBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentBuilder toBuilder() => new CommentBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Comment) return false;
    return by == other.by &&
        id == other.id &&
        kids == other.kids &&
        comments == other.comments &&
        parent == other.parent &&
        text == other.text &&
        time == other.time &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, by.hashCode), id.hashCode),
                            kids.hashCode),
                        comments.hashCode),
                    parent.hashCode),
                text.hashCode),
            time.hashCode),
        type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Comment')
          ..add('by', by)
          ..add('id', id)
          ..add('kids', kids)
          ..add('comments', comments)
          ..add('parent', parent)
          ..add('text', text)
          ..add('time', time)
          ..add('type', type))
        .toString();
  }
}

class CommentBuilder implements Builder<Comment, CommentBuilder> {
  _$Comment _$v;

  String _by;
  String get by => _$this._by;
  set by(String by) => _$this._by = by;

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

  int _parent;
  int get parent => _$this._parent;
  set parent(int parent) => _$this._parent = parent;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  DateTime _time;
  DateTime get time => _$this._time;
  set time(DateTime time) => _$this._time = time;

  StoryType _type;
  StoryType get type => _$this._type;
  set type(StoryType type) => _$this._type = type;

  CommentBuilder();

  CommentBuilder get _$this {
    if (_$v != null) {
      _by = _$v.by;
      _id = _$v.id;
      _kids = _$v.kids?.toBuilder();
      _comments = _$v.comments?.toBuilder();
      _parent = _$v.parent;
      _text = _$v.text;
      _time = _$v.time;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Comment other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Comment;
  }

  @override
  void update(void updates(CommentBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Comment build() {
    _$Comment _$result;
    try {
      _$result = _$v ??
          new _$Comment._(
              by: by,
              id: id,
              kids: kids.build(),
              comments: _comments?.build(),
              parent: parent,
              text: text,
              time: time,
              type: type);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'kids';
        kids.build();
        _$failedField = 'comments';
        _comments?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Comment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
