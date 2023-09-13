import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MoneyTransferRecord extends FirestoreRecord {
  MoneyTransferRecord._(
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

  // "send_date" field.
  DateTime? _sendDate;
  DateTime? get sendDate => _sendDate;
  bool hasSendDate() => _sendDate != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "amount" field.
  String? _amount;
  String get amount => _amount ?? '';
  bool hasAmount() => _amount != null;

  // "transfer_id" field.
  String? _transferId;
  String get transferId => _transferId ?? '';
  bool hasTransferId() => _transferId != null;

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
    _sendDate = snapshotData['send_date'] as DateTime?;
    _state = snapshotData['state'] as String?;
    _amount = snapshotData['amount'] as String?;
    _transferId = snapshotData['transfer_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('money_transfer');

  static Stream<MoneyTransferRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MoneyTransferRecord.fromSnapshot(s));

  static Future<MoneyTransferRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MoneyTransferRecord.fromSnapshot(s));

  static MoneyTransferRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MoneyTransferRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MoneyTransferRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MoneyTransferRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MoneyTransferRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MoneyTransferRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMoneyTransferRecordData({
  String? receiverName,
  String? receiverPhone,
  String? receiverLocation,
  String? senderName,
  String? senderPhone,
  String? senderLocation,
  String? senderOffice,
  String? receiverOffice,
  String? driver,
  DateTime? sendDate,
  String? state,
  String? amount,
  String? transferId,
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
      'send_date': sendDate,
      'state': state,
      'amount': amount,
      'transfer_id': transferId,
    }.withoutNulls,
  );

  return firestoreData;
}

class MoneyTransferRecordDocumentEquality
    implements Equality<MoneyTransferRecord> {
  const MoneyTransferRecordDocumentEquality();

  @override
  bool equals(MoneyTransferRecord? e1, MoneyTransferRecord? e2) {
    return e1?.receiverName == e2?.receiverName &&
        e1?.receiverPhone == e2?.receiverPhone &&
        e1?.receiverLocation == e2?.receiverLocation &&
        e1?.senderName == e2?.senderName &&
        e1?.senderPhone == e2?.senderPhone &&
        e1?.senderLocation == e2?.senderLocation &&
        e1?.senderOffice == e2?.senderOffice &&
        e1?.receiverOffice == e2?.receiverOffice &&
        e1?.driver == e2?.driver &&
        e1?.sendDate == e2?.sendDate &&
        e1?.state == e2?.state &&
        e1?.amount == e2?.amount &&
        e1?.transferId == e2?.transferId;
  }

  @override
  int hash(MoneyTransferRecord? e) => const ListEquality().hash([
        e?.receiverName,
        e?.receiverPhone,
        e?.receiverLocation,
        e?.senderName,
        e?.senderPhone,
        e?.senderLocation,
        e?.senderOffice,
        e?.receiverOffice,
        e?.driver,
        e?.sendDate,
        e?.state,
        e?.amount,
        e?.transferId
      ]);

  @override
  bool isValidKey(Object? o) => o is MoneyTransferRecord;
}
