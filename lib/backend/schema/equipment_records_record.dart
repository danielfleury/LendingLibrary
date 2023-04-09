import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'equipment_records_record.g.dart';

abstract class EquipmentRecordsRecord
    implements Built<EquipmentRecordsRecord, EquipmentRecordsRecordBuilder> {
  static Serializer<EquipmentRecordsRecord> get serializer =>
      _$equipmentRecordsRecordSerializer;

  DocumentReference? get equipmentcollection;

  @BuiltValueField(wireName: 'equipment_code')
  String? get equipmentCode;

  @BuiltValueField(wireName: 'current_location')
  LatLng? get currentLocation;

  @BuiltValueField(wireName: 'location_history')
  BuiltList<LatLng>? get locationHistory;

  bool? get available;

  String? get status;

  @BuiltValueField(wireName: 'current_borrower')
  DocumentReference? get currentBorrower;

  String? get center;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EquipmentRecordsRecordBuilder builder) =>
      builder
        ..equipmentCode = ''
        ..locationHistory = ListBuilder()
        ..available = false
        ..status = ''
        ..center = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('EquipmentRecords');

  static Stream<EquipmentRecordsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EquipmentRecordsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EquipmentRecordsRecord._();
  factory EquipmentRecordsRecord(
          [void Function(EquipmentRecordsRecordBuilder) updates]) =
      _$EquipmentRecordsRecord;

  static EquipmentRecordsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEquipmentRecordsRecordData({
  DocumentReference? equipmentcollection,
  String? equipmentCode,
  LatLng? currentLocation,
  bool? available,
  String? status,
  DocumentReference? currentBorrower,
  String? center,
}) {
  final firestoreData = serializers.toFirestore(
    EquipmentRecordsRecord.serializer,
    EquipmentRecordsRecord(
      (e) => e
        ..equipmentcollection = equipmentcollection
        ..equipmentCode = equipmentCode
        ..currentLocation = currentLocation
        ..locationHistory = null
        ..available = available
        ..status = status
        ..currentBorrower = currentBorrower
        ..center = center,
    ),
  );

  return firestoreData;
}
