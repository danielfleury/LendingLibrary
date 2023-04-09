// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipment_records_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EquipmentRecordsRecord> _$equipmentRecordsRecordSerializer =
    new _$EquipmentRecordsRecordSerializer();

class _$EquipmentRecordsRecordSerializer
    implements StructuredSerializer<EquipmentRecordsRecord> {
  @override
  final Iterable<Type> types = const [
    EquipmentRecordsRecord,
    _$EquipmentRecordsRecord
  ];
  @override
  final String wireName = 'EquipmentRecordsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, EquipmentRecordsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.equipmentcollection;
    if (value != null) {
      result
        ..add('equipmentcollection')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.equipmentCode;
    if (value != null) {
      result
        ..add('equipment_code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currentLocation;
    if (value != null) {
      result
        ..add('current_location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.locationHistory;
    if (value != null) {
      result
        ..add('location_history')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(LatLng)])));
    }
    value = object.available;
    if (value != null) {
      result
        ..add('available')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currentBorrower;
    if (value != null) {
      result
        ..add('current_borrower')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.center;
    if (value != null) {
      result
        ..add('center')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  EquipmentRecordsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EquipmentRecordsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'equipmentcollection':
          result.equipmentcollection = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'equipment_code':
          result.equipmentCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'current_location':
          result.currentLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'location_history':
          result.locationHistory.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(LatLng)]))!
              as BuiltList<Object?>);
          break;
        case 'available':
          result.available = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'current_borrower':
          result.currentBorrower = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'center':
          result.center = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$EquipmentRecordsRecord extends EquipmentRecordsRecord {
  @override
  final DocumentReference<Object?>? equipmentcollection;
  @override
  final String? equipmentCode;
  @override
  final LatLng? currentLocation;
  @override
  final BuiltList<LatLng>? locationHistory;
  @override
  final bool? available;
  @override
  final String? status;
  @override
  final DocumentReference<Object?>? currentBorrower;
  @override
  final String? center;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EquipmentRecordsRecord(
          [void Function(EquipmentRecordsRecordBuilder)? updates]) =>
      (new EquipmentRecordsRecordBuilder()..update(updates))._build();

  _$EquipmentRecordsRecord._(
      {this.equipmentcollection,
      this.equipmentCode,
      this.currentLocation,
      this.locationHistory,
      this.available,
      this.status,
      this.currentBorrower,
      this.center,
      this.ffRef})
      : super._();

  @override
  EquipmentRecordsRecord rebuild(
          void Function(EquipmentRecordsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EquipmentRecordsRecordBuilder toBuilder() =>
      new EquipmentRecordsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EquipmentRecordsRecord &&
        equipmentcollection == other.equipmentcollection &&
        equipmentCode == other.equipmentCode &&
        currentLocation == other.currentLocation &&
        locationHistory == other.locationHistory &&
        available == other.available &&
        status == other.status &&
        currentBorrower == other.currentBorrower &&
        center == other.center &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, equipmentcollection.hashCode);
    _$hash = $jc(_$hash, equipmentCode.hashCode);
    _$hash = $jc(_$hash, currentLocation.hashCode);
    _$hash = $jc(_$hash, locationHistory.hashCode);
    _$hash = $jc(_$hash, available.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, currentBorrower.hashCode);
    _$hash = $jc(_$hash, center.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EquipmentRecordsRecord')
          ..add('equipmentcollection', equipmentcollection)
          ..add('equipmentCode', equipmentCode)
          ..add('currentLocation', currentLocation)
          ..add('locationHistory', locationHistory)
          ..add('available', available)
          ..add('status', status)
          ..add('currentBorrower', currentBorrower)
          ..add('center', center)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EquipmentRecordsRecordBuilder
    implements Builder<EquipmentRecordsRecord, EquipmentRecordsRecordBuilder> {
  _$EquipmentRecordsRecord? _$v;

  DocumentReference<Object?>? _equipmentcollection;
  DocumentReference<Object?>? get equipmentcollection =>
      _$this._equipmentcollection;
  set equipmentcollection(DocumentReference<Object?>? equipmentcollection) =>
      _$this._equipmentcollection = equipmentcollection;

  String? _equipmentCode;
  String? get equipmentCode => _$this._equipmentCode;
  set equipmentCode(String? equipmentCode) =>
      _$this._equipmentCode = equipmentCode;

  LatLng? _currentLocation;
  LatLng? get currentLocation => _$this._currentLocation;
  set currentLocation(LatLng? currentLocation) =>
      _$this._currentLocation = currentLocation;

  ListBuilder<LatLng>? _locationHistory;
  ListBuilder<LatLng> get locationHistory =>
      _$this._locationHistory ??= new ListBuilder<LatLng>();
  set locationHistory(ListBuilder<LatLng>? locationHistory) =>
      _$this._locationHistory = locationHistory;

  bool? _available;
  bool? get available => _$this._available;
  set available(bool? available) => _$this._available = available;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  DocumentReference<Object?>? _currentBorrower;
  DocumentReference<Object?>? get currentBorrower => _$this._currentBorrower;
  set currentBorrower(DocumentReference<Object?>? currentBorrower) =>
      _$this._currentBorrower = currentBorrower;

  String? _center;
  String? get center => _$this._center;
  set center(String? center) => _$this._center = center;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EquipmentRecordsRecordBuilder() {
    EquipmentRecordsRecord._initializeBuilder(this);
  }

  EquipmentRecordsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _equipmentcollection = $v.equipmentcollection;
      _equipmentCode = $v.equipmentCode;
      _currentLocation = $v.currentLocation;
      _locationHistory = $v.locationHistory?.toBuilder();
      _available = $v.available;
      _status = $v.status;
      _currentBorrower = $v.currentBorrower;
      _center = $v.center;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EquipmentRecordsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EquipmentRecordsRecord;
  }

  @override
  void update(void Function(EquipmentRecordsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EquipmentRecordsRecord build() => _build();

  _$EquipmentRecordsRecord _build() {
    _$EquipmentRecordsRecord _$result;
    try {
      _$result = _$v ??
          new _$EquipmentRecordsRecord._(
              equipmentcollection: equipmentcollection,
              equipmentCode: equipmentCode,
              currentLocation: currentLocation,
              locationHistory: _locationHistory?.build(),
              available: available,
              status: status,
              currentBorrower: currentBorrower,
              center: center,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'locationHistory';
        _locationHistory?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EquipmentRecordsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
