import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'equipment_collections_record.g.dart';

abstract class EquipmentCollectionsRecord
    implements
        Built<EquipmentCollectionsRecord, EquipmentCollectionsRecordBuilder> {
  static Serializer<EquipmentCollectionsRecord> get serializer =>
      _$equipmentCollectionsRecordSerializer;

  @BuiltValueField(wireName: 'collection_name')
  String? get collectionName;

  @BuiltValueField(wireName: 'creation_time')
  DateTime? get creationTime;

  @BuiltValueField(wireName: 'cover_image')
  String? get coverImage;

  @BuiltValueField(wireName: 'inventory_location')
  LatLng? get inventoryLocation;

  String? get center;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EquipmentCollectionsRecordBuilder builder) =>
      builder
        ..collectionName = ''
        ..coverImage = ''
        ..center = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('EquipmentCollections');

  static Stream<EquipmentCollectionsRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EquipmentCollectionsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EquipmentCollectionsRecord._();
  factory EquipmentCollectionsRecord(
          [void Function(EquipmentCollectionsRecordBuilder) updates]) =
      _$EquipmentCollectionsRecord;

  static EquipmentCollectionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEquipmentCollectionsRecordData({
  String? collectionName,
  DateTime? creationTime,
  String? coverImage,
  LatLng? inventoryLocation,
  String? center,
}) {
  final firestoreData = serializers.toFirestore(
    EquipmentCollectionsRecord.serializer,
    EquipmentCollectionsRecord(
      (e) => e
        ..collectionName = collectionName
        ..creationTime = creationTime
        ..coverImage = coverImage
        ..inventoryLocation = inventoryLocation
        ..center = center,
    ),
  );

  return firestoreData;
}
