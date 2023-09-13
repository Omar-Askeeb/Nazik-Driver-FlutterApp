import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PackagesRecord extends FirestoreRecord {
  PackagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "receiver_name" field.
  String? _receiverName;
  String get receiverName => _receiverName ?? '';
  bool hasReceiverName() => _receiverName != null;

  // "receiver_phone" field.
  String? _receiverPhone;
  String get receiverPhone => _receiverPhone ?? '';
  bool hasReceiverPhone() => _receiverPhone != null;

  // "receiver_location" field.
  String? _receiverLocation;
  String get receiverLocation => _receiverLocation ?? '';
  bool hasReceiverLocation() => _receiverLocation != null;

  // "sender_name" field.
  String? _senderName;
  String get senderName => _senderName ?? '';
  bool hasSenderName() => _senderName != null;

  // "sender_phone" field.
  String? _senderPhone;
  String get senderPhone => _senderPhone ?? '';
  bool hasSenderPhone() => _senderPhone != null;

  // "sender_location" field.
  String? _senderLocation;
  String get senderLocation => _senderLocation ?? '';
  bool hasSenderLocation() => _senderLocation != null;

  // "sender_office" field.
  String? _senderOffice;
  String get senderOffice => _senderOffice ?? '';
  bool hasSenderOffice() => _senderOffice != null;

  // "receiver_office" field.
  String? _receiverOffice;
  String get receiverOffice => _receiverOffice ?? '';
  bool hasReceiverOffice() => _receiverOffice != null;

  // "driver" field.
  String? _driver;
  String get driver => _driver ?? '';
  bool hasDriver() => _driver != null;

  // "package_type" field.
  String? _packageType;
  String get packageType => _packageType ?? '';
  bool hasPackageType() => _packageType != null;

  // "package_state" field.
  String? _packageState;
  String get packageState => _packageState ?? '';
  bool hasPackageState() => _packageState != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  // "rev" field.
  double? _rev;
  double get rev => _rev ?? 0.0;
  bool hasRev() => _rev != null;

  // "send_date" field.
  DateTime? _sendDate;
  DateTime? get sendDate => _sendDate;
  bool hasSendDate() => _sendDate != null;

  // "deliver_date" field.
  DateTime? _deliverDate;
  DateTime? get deliverDate => _deliverDate;
  bool hasDeliverDate() => _deliverDate != null;

  // "package_id" field.
  String? _packageId;
  String get packageId => _packageId ?? '';
  bool hasPackageId() => _packageId != null;

  // "break_able" field.
  String? _breakAble;
  String get breakAble => _breakAble ?? '';
  bool hasBreakAble() => _breakAble != null;

  // "list_id" field.
  String? _listId;
  String get listId => _listId ?? '';
  bool hasListId() => _listId != null;

  void _initializeFields() {
    _receiverName = snapshotData['receiver_name'] as String?;
    _receiverPhone = snapshotData['receiver_phone'] as String?;
    _receiverLocation = snapshotData['receiver_location'] as String?;
    _senderName = snapshotData['sender_name'] as String?;
    _senderPhone = snapshotData['sender_phone'] as String?;
    _senderLocation = snapshotData['sender_location'] as String?;
    _senderOffice = snapshotData['sender_office'] as String?;
    _receiverOffice = snapshotData['receiver_office'] as String?;
    _driver = snapshotData['driver'] as String?;
    _packageType = snapshotData['package_type'] as String?;
    _packageState = snapshotData['package_state'] as String?;
    _notes = snapshotData['notes'] as String?;
    _rev = castToType<double>(snapshotData['rev']);
    _sendDate = snapshotData['send_date'] as DateTime?;
    _deliverDate = snapshotData['deliver_date'] as DateTime?;
    _packageId = snapshotData['package_id'] as String?;
    _breakAble = snapshotData['break_able'] as String?;
    _listId = snapshotData['list_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('packages');

  static Stream<PackagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PackagesRecord.fromSnapshot(s));

  static Future<PackagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PackagesRecord.fromSnapshot(s));

  static PackagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PackagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PackagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PackagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PackagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PackagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPackagesRecordData({
  String? receiverName,
  String? receiverPhone,
  String? receiverLocation,
  String? senderName,
  String? senderPhone,
  String? senderLocation,
  String? senderOffice,
  String? receiverOffice,
  String? driver,
  String? packageType,
  String? packageState,
  String? notes,
  double? rev,
  DateTime? sendDate,
  DateTime? deliverDate,
  String? packageId,
  String? breakAble,
  String? listId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'receiver_name': receiverName,
      'receiver_phone': receiverPhone,
      'receiver_location': receiverLocation,
      'sender_name': senderName,
      'sender_phone': senderPhone,
      'sender_location': senderLocation,
      'sender_office': senderOffice,
      'receiver_office': receiverOffice,
      'driver': driver,
      'package_type': packageType,
      'package_state': packageState,
      'notes': notes,
      'rev': rev,
      'send_date': sendDate,
      'deliver_date': deliverDate,
      'package_id': packageId,
      'break_able': breakAble,
      'list_id': listId,
    }.withoutNulls,
  );

  return firestoreData;
}

class PackagesRecordDocumentEquality implements Equality<PackagesRecord> {
  const PackagesRecordDocumentEquality();

  @override
  bool equals(PackagesRecord? e1, PackagesRecord? e2) {
    return e1?.receiverName == e2?.receiverName &&
        e1?.receiverPhone == e2?.receiverPhone &&
        e1?.receiverLocation == e2?.receiverLocation &&
        e1?.senderName == e2?.senderName &&
        e1?.senderPhone == e2?.senderPhone &&
        e1?.senderLocation == e2?.senderLocation &&
        e1?.senderOffice == e2?.senderOffice &&
        e1?.receiverOffice == e2?.receiverOffice &&
        e1?.driver == e2?.driver &&
        e1?.packageType == e2?.packageType &&
        e1?.packageState == e2?.packageState &&
        e1?.notes == e2?.notes &&
        e1?.rev == e2?.rev &&
        e1?.sendDate == e2?.sendDate &&
        e1?.deliverDate == e2?.deliverDate &&
        e1?.packageId == e2?.packageId &&
        e1?.breakAble == e2?.breakAble &&
        e1?.listId == e2?.listId;
  }

  @override
  int hash(PackagesRecord? e) => const ListEquality().hash([
        e?.receiverName,
        e?.receiverPhone,
        e?.receiverLocation,
        e?.senderName,
        e?.senderPhone,
        e?.senderLocation,
        e?.senderOffice,
        e?.receiverOffice,
        e?.driver,
        e?.packageType,
        e?.packageState,
        e?.notes,
        e?.rev,
        e?.sendDate,
        e?.deliverDate,
        e?.packageId,
        e?.breakAble,
        e?.listId
      ]);

  @override
  bool isValidKey(Object? o) => o is PackagesRecord;
}
