import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionsRecord extends FirestoreRecord {
  TransactionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "year" field.
  String? _year;
  String get year => _year ?? '';
  bool hasYear() => _year != null;

  // "income" field.
  double? _income;
  double get income => _income ?? 0.0;
  bool hasIncome() => _income != null;

  // "expense" field.
  double? _expense;
  double get expense => _expense ?? 0.0;
  bool hasExpense() => _expense != null;

  // "userFrom" field.
  DocumentReference? _userFrom;
  DocumentReference? get userFrom => _userFrom;
  bool hasUserFrom() => _userFrom != null;

  // "userTo" field.
  DocumentReference? _userTo;
  DocumentReference? get userTo => _userTo;
  bool hasUserTo() => _userTo != null;

  void _initializeFields() {
    _year = snapshotData['year'] as String?;
    _income = castToType<double>(snapshotData['income']);
    _expense = castToType<double>(snapshotData['expense']);
    _userFrom = snapshotData['userFrom'] as DocumentReference?;
    _userTo = snapshotData['userTo'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('transactions');

  static Stream<TransactionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TransactionsRecord.fromSnapshot(s));

  static Future<TransactionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TransactionsRecord.fromSnapshot(s));

  static TransactionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TransactionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TransactionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TransactionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TransactionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TransactionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTransactionsRecordData({
  String? year,
  double? income,
  double? expense,
  DocumentReference? userFrom,
  DocumentReference? userTo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'year': year,
      'income': income,
      'expense': expense,
      'userFrom': userFrom,
      'userTo': userTo,
    }.withoutNulls,
  );

  return firestoreData;
}

class TransactionsRecordDocumentEquality
    implements Equality<TransactionsRecord> {
  const TransactionsRecordDocumentEquality();

  @override
  bool equals(TransactionsRecord? e1, TransactionsRecord? e2) {
    return e1?.year == e2?.year &&
        e1?.income == e2?.income &&
        e1?.expense == e2?.expense &&
        e1?.userFrom == e2?.userFrom &&
        e1?.userTo == e2?.userTo;
  }

  @override
  int hash(TransactionsRecord? e) => const ListEquality()
      .hash([e?.year, e?.income, e?.expense, e?.userFrom, e?.userTo]);

  @override
  bool isValidKey(Object? o) => o is TransactionsRecord;
}
