// GENERATED CODE - DO NOT MODIFY BY HAND

part of user;

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

Serializer<User> _$userSerializer = new _$UserSerializer();

class _$UserSerializer implements StructuredSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];
  @override
  final String wireName = 'User';

  @override
  Iterable serialize(Serializers serializers, User object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'created',
      serializers.serialize(object.created, specifiedType: const FullType(int)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'karma',
      serializers.serialize(object.karma, specifiedType: const FullType(int)),
    ];
    if (object.about != null) {
      result
        ..add('about')
        ..add(serializers.serialize(object.about,
            specifiedType: const FullType(String)));
    }
    if (object.submitted != null) {
      result
        ..add('submitted')
        ..add(serializers.serialize(object.submitted,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }

    return result;
  }

  @override
  User deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'about':
          result.about = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created':
          result.created = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'karma':
          result.karma = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'submitted':
          result.submitted.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$User extends User {
  @override
  final String about;
  @override
  final int created;
  @override
  final String id;
  @override
  final int karma;
  @override
  final BuiltList<int> submitted;

  factory _$User([void updates(UserBuilder b)]) =>
      (new UserBuilder()..update(updates)).build();

  _$User._({this.about, this.created, this.id, this.karma, this.submitted})
      : super._() {
    if (created == null) throw new BuiltValueNullFieldError('User', 'created');
    if (id == null) throw new BuiltValueNullFieldError('User', 'id');
    if (karma == null) throw new BuiltValueNullFieldError('User', 'karma');
  }

  @override
  User rebuild(void updates(UserBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => new UserBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! User) return false;
    return about == other.about &&
        created == other.created &&
        id == other.id &&
        karma == other.karma &&
        submitted == other.submitted;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, about.hashCode), created.hashCode), id.hashCode),
            karma.hashCode),
        submitted.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('User')
          ..add('about', about)
          ..add('created', created)
          ..add('id', id)
          ..add('karma', karma)
          ..add('submitted', submitted))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User _$v;

  String _about;
  String get about => _$this._about;
  set about(String about) => _$this._about = about;

  int _created;
  int get created => _$this._created;
  set created(int created) => _$this._created = created;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  int _karma;
  int get karma => _$this._karma;
  set karma(int karma) => _$this._karma = karma;

  ListBuilder<int> _submitted;
  ListBuilder<int> get submitted =>
      _$this._submitted ??= new ListBuilder<int>();
  set submitted(ListBuilder<int> submitted) => _$this._submitted = submitted;

  UserBuilder();

  UserBuilder get _$this {
    if (_$v != null) {
      _about = _$v.about;
      _created = _$v.created;
      _id = _$v.id;
      _karma = _$v.karma;
      _submitted = _$v.submitted?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$User;
  }

  @override
  void update(void updates(UserBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$User build() {
    _$User _$result;
    try {
      _$result = _$v ??
          new _$User._(
              about: about,
              created: created,
              id: id,
              karma: karma,
              submitted: _submitted?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'submitted';
        _submitted?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'User', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
