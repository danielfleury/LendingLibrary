// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkouts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CheckoutsRecord> _$checkoutsRecordSerializer =
    new _$CheckoutsRecordSerializer();

class _$CheckoutsRecordSerializer
    implements StructuredSerializer<CheckoutsRecord> {
  @override
  final Iterable<Type> types = const [CheckoutsRecord, _$CheckoutsRecord];
  @override
  final String wireName = 'CheckoutsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CheckoutsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.equipmentrecord;
    if (value != null) {
      result
        ..add('equipmentrecord')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.approved;
    if (value != null) {
      result
        ..add('approved')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.equipmentCollection;
    if (value != null) {
      result
        ..add('equipment_collection')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.startTime;
    if (value != null) {
      result
        ..add('start_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.endTime;
    if (value != null) {
      result
        ..add('end_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.center;
    if (value != null) {
      result
        ..add('Center')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  CheckoutsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CheckoutsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'equipmentrecord':
          result.equipmentrecord = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'approved':
          result.approved = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'equipment_collection':
          result.equipmentCollection = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'start_time':
          result.startTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'end_time':
          result.endTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Center':
          result.center = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$CheckoutsRecord extends CheckoutsRecord {
  @override
  final DocumentReference<Object?>? equipmentrecord;
  @override
  final DateTime? time;
  @override
  final bool? approved;
  @override
  final DocumentReference<Object?>? user;
  @override
  final DocumentReference<Object?>? equipmentCollection;
  @override
  final DateTime? startTime;
  @override
  final DateTime? endTime;
  @override
  final String? center;
  @override
  final LatLng? location;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CheckoutsRecord([void Function(CheckoutsRecordBuilder)? updates]) =>
      (new CheckoutsRecordBuilder()..update(updates))._build();

  _$CheckoutsRecord._(
      {this.equipmentrecord,
      this.time,
      this.approved,
      this.user,
      this.equipmentCollection,
      this.startTime,
      this.endTime,
      this.center,
      this.location,
      this.ffRef})
      : super._();

  @override
  CheckoutsRecord rebuild(void Function(CheckoutsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckoutsRecordBuilder toBuilder() =>
      new CheckoutsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckoutsRecord &&
        equipmentrecord == other.equipmentrecord &&
        time == other.time &&
        approved == other.approved &&
        user == other.user &&
        equipmentCollection == other.equipmentCollection &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        center == other.center &&
        location == other.location &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, equipmentrecord.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, approved.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, equipmentCollection.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, center.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CheckoutsRecord')
          ..add('equipmentrecord', equipmentrecord)
          ..add('time', time)
          ..add('approved', approved)
          ..add('user', user)
          ..add('equipmentCollection', equipmentCollection)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('center', center)
          ..add('location', location)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CheckoutsRecordBuilder
    implements Builder<CheckoutsRecord, CheckoutsRecordBuilder> {
  _$CheckoutsRecord? _$v;

  DocumentReference<Object?>? _equipmentrecord;
  DocumentReference<Object?>? get equipmentrecord => _$this._equipmentrecord;
  set equipmentrecord(DocumentReference<Object?>? equipmentrecord) =>
      _$this._equipmentrecord = equipmentrecord;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  bool? _approved;
  bool? get approved => _$this._approved;
  set approved(bool? approved) => _$this._approved = approved;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  DocumentReference<Object?>? _equipmentCollection;
  DocumentReference<Object?>? get equipmentCollection =>
      _$this._equipmentCollection;
  set equipmentCollection(DocumentReference<Object?>? equipmentCollection) =>
      _$this._equipmentCollection = equipmentCollection;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  String? _center;
  String? get center => _$this._center;
  set center(String? center) => _$this._center = center;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CheckoutsRecordBuilder() {
    CheckoutsRecord._initializeBuilder(this);
  }

  CheckoutsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _equipmentrecord = $v.equipmentrecord;
      _time = $v.time;
      _approved = $v.approved;
      _user = $v.user;
      _equipmentCollection = $v.equipmentCollection;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _center = $v.center;
      _location = $v.location;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckoutsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CheckoutsRecord;
  }

  @override
  void update(void Function(CheckoutsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CheckoutsRecord build() => _build();

  _$CheckoutsRecord _build() {
    final _$result = _$v ??
        new _$CheckoutsRecord._(
            equipmentrecord: equipmentrecord,
            time: time,
            approved: approved,
            user: user,
            equipmentCollection: equipmentCollection,
            startTime: startTime,
            endTime: endTime,
            center: center,
            location: location,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
