import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'checkouts_record.g.dart';

abstract class CheckoutsRecord
    implements Built<CheckoutsRecord, CheckoutsRecordBuilder> {
  static Serializer<CheckoutsRecord> get serializer =>
      _$checkoutsRecordSerializer;

  DocumentReference? get equipmentrecord;

  DateTime? get time;

  bool? get approved;

  DocumentReference? get user;

  @BuiltValueField(wireName: 'equipment_collection')
  DocumentReference? get equipmentCollection;

  @BuiltValueField(wireName: 'start_time')
  DateTime? get startTime;

  @BuiltValueField(wireName: 'end_time')
  DateTime? get endTime;

  @BuiltValueField(wireName: 'Center')
  String? get center;

  LatLng? get location;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CheckoutsRecordBuilder builder) => builder
    ..approved = false
    ..center = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('checkouts');

  static Stream<CheckoutsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CheckoutsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CheckoutsRecord._();
  factory CheckoutsRecord([void Function(CheckoutsRecordBuilder) updates]) =
      _$CheckoutsRecord;

  static CheckoutsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCheckoutsRecordData({
  DocumentReference? equipmentrecord,
  DateTime? time,
  bool? approved,
  DocumentReference? user,
  DocumentReference? equipmentCollection,
  DateTime? startTime,
  DateTime? endTime,
  String? center,
  LatLng? location,
}) {
  final firestoreData = serializers.toFirestore(
    CheckoutsRecord.serializer,
    CheckoutsRecord(
      (c) => c
        ..equipmentrecord = equipmentrecord
        ..time = time
        ..approved = approved
        ..user = user
        ..equipmentCollection = equipmentCollection
        ..startTime = startTime
        ..endTime = endTime
        ..center = center
        ..location = location,
    ),
  );

  return firestoreData;
}
