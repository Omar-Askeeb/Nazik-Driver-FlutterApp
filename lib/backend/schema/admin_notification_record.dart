import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdminNotificationRecord extends FirestoreRecord {
  AdminNotificationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "notification_body" field.
  String? _notificationBody;
  String get notificationBody => _notificationBody ?? '';
  bool hasNotificationBody() => _notificationBody != null;

  void _initializeFields() {
    _notificationBody = snapshotData['notification_body'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('admin_notification');

  static Stream<AdminNotificationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdminNotificationRecord.fromSnapshot(s));

  static Future<AdminNotificationRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AdminNotificationRecord.fromSnapshot(s));

  static AdminNotificationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AdminNotificationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdminNotificationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdminNotificationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdminNotificationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdminNotificationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdminNotificationRecordData({
  String? notificationBody,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'notification_body': notificationBody,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdminNotificationRecordDocumentEquality
    implements Equality<AdminNotificationRecord> {
  const AdminNotificationRecordDocumentEquality();

  @override
  bool equals(AdminNotificationRecord? e1, AdminNotificationRecord? e2) {
    return e1?.notificationBody == e2?.notificationBody;
  }

  @override
  int hash(AdminNotificationRecord? e) =>
      const ListEquality().hash([e?.notificationBody]);

  @override
  bool isValidKey(Object? o) => o is AdminNotificationRecord;
}
