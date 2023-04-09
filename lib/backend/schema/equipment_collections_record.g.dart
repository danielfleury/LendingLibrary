// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipment_collections_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EquipmentCollectionsRecord> _$equipmentCollectionsRecordSerializer =
    new _$EquipmentCollectionsRecordSerializer();

class _$EquipmentCollectionsRecordSerializer
    implements StructuredSerializer<EquipmentCollectionsRecord> {
  @override
  final Iterable<Type> types = const [
    EquipmentCollectionsRecord,
    _$EquipmentCollectionsRecord
  ];
  @override
  final String wireName = 'EquipmentCollectionsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, EquipmentCollectionsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.collectionName;
    if (value != null) {
      result
        ..add('collection_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.creationTime;
    if (value != null) {
      result
        ..add('creation_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.coverImage;
    if (value != null) {
      result
        ..add('cover_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.inventoryLocation;
    if (value != null) {
      result
        ..add('inventory_location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
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
  EquipmentCollectionsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EquipmentCollectionsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'collection_name':
          result.collectionName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'creation_time':
          result.creationTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'cover_image':
          result.coverImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'inventory_location':
          result.inventoryLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
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

class _$EquipmentCollectionsRecord extends EquipmentCollectionsRecord {
  @override
  final String? collectionName;
  @override
  final DateTime? creationTime;
  @override
  final String? coverImage;
  @override
  final LatLng? inventoryLocation;
  @override
  final String? center;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EquipmentCollectionsRecord(
          [void Function(EquipmentCollectionsRecordBuilder)? updates]) =>
      (new EquipmentCollectionsRecordBuilder()..update(updates))._build();

  _$EquipmentCollectionsRecord._(
      {this.collectionName,
      this.creationTime,
      this.coverImage,
      this.inventoryLocation,
      this.center,
      this.ffRef})
      : super._();

  @override
  EquipmentCollectionsRecord rebuild(
          void Function(EquipmentCollectionsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EquipmentCollectionsRecordBuilder toBuilder() =>
      new EquipmentCollectionsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EquipmentCollectionsRecord &&
        collectionName == other.collectionName &&
        creationTime == other.creationTime &&
        coverImage == other.coverImage &&
        inventoryLocation == other.inventoryLocation &&
        center == other.center &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, collectionName.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, coverImage.hashCode);
    _$hash = $jc(_$hash, inventoryLocation.hashCode);
    _$hash = $jc(_$hash, center.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EquipmentCollectionsRecord')
          ..add('collectionName', collectionName)
          ..add('creationTime', creationTime)
          ..add('coverImage', coverImage)
          ..add('inventoryLocation', inventoryLocation)
          ..add('center', center)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EquipmentCollectionsRecordBuilder
    implements
        Builder<EquipmentCollectionsRecord, EquipmentCollectionsRecordBuilder> {
  _$EquipmentCollectionsRecord? _$v;

  String? _collectionName;
  String? get collectionName => _$this._collectionName;
  set collectionName(String? collectionName) =>
      _$this._collectionName = collectionName;

  DateTime? _creationTime;
  DateTime? get creationTime => _$this._creationTime;
  set creationTime(DateTime? creationTime) =>
      _$this._creationTime = creationTime;

  String? _coverImage;
  String? get coverImage => _$this._coverImage;
  set coverImage(String? coverImage) => _$this._coverImage = coverImage;

  LatLng? _inventoryLocation;
  LatLng? get inventoryLocation => _$this._inventoryLocation;
  set inventoryLocation(LatLng? inventoryLocation) =>
      _$this._inventoryLocation = inventoryLocation;

  String? _center;
  String? get center => _$this._center;
  set center(String? center) => _$this._center = center;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EquipmentCollectionsRecordBuilder() {
    EquipmentCollectionsRecord._initializeBuilder(this);
  }

  EquipmentCollectionsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _collectionName = $v.collectionName;
      _creationTime = $v.creationTime;
      _coverImage = $v.coverImage;
      _inventoryLocation = $v.inventoryLocation;
      _center = $v.center;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EquipmentCollectionsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EquipmentCollectionsRecord;
  }

  @override
  void update(void Function(EquipmentCollectionsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EquipmentCollectionsRecord build() => _build();

  _$EquipmentCollectionsRecord _build() {
    final _$result = _$v ??
        new _$EquipmentCollectionsRecord._(
            collectionName: collectionName,
            creationTime: creationTime,
            coverImage: coverImage,
            inventoryLocation: inventoryLocation,
            center: center,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
