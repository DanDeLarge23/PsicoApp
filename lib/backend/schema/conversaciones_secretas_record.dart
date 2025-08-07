import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConversacionesSecretasRecord extends FirestoreRecord {
  ConversacionesSecretasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Conversacion" field.
  String? _conversacion;
  String get conversacion => _conversacion ?? '';
  bool hasConversacion() => _conversacion != null;

  // "paciente" field.
  DocumentReference? _paciente;
  DocumentReference? get paciente => _paciente;
  bool hasPaciente() => _paciente != null;

  // "FechadelApunte" field.
  DateTime? _fechadelApunte;
  DateTime? get fechadelApunte => _fechadelApunte;
  bool hasFechadelApunte() => _fechadelApunte != null;

  void _initializeFields() {
    _conversacion = snapshotData['Conversacion'] as String?;
    _paciente = snapshotData['paciente'] as DocumentReference?;
    _fechadelApunte = snapshotData['FechadelApunte'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('conversacionesSecretas');

  static Stream<ConversacionesSecretasRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => ConversacionesSecretasRecord.fromSnapshot(s));

  static Future<ConversacionesSecretasRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ConversacionesSecretasRecord.fromSnapshot(s));

  static ConversacionesSecretasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ConversacionesSecretasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ConversacionesSecretasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ConversacionesSecretasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ConversacionesSecretasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ConversacionesSecretasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createConversacionesSecretasRecordData({
  String? conversacion,
  DocumentReference? paciente,
  DateTime? fechadelApunte,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Conversacion': conversacion,
      'paciente': paciente,
      'FechadelApunte': fechadelApunte,
    }.withoutNulls,
  );

  return firestoreData;
}

class ConversacionesSecretasRecordDocumentEquality
    implements Equality<ConversacionesSecretasRecord> {
  const ConversacionesSecretasRecordDocumentEquality();

  @override
  bool equals(
      ConversacionesSecretasRecord? e1, ConversacionesSecretasRecord? e2) {
    return e1?.conversacion == e2?.conversacion &&
        e1?.paciente == e2?.paciente &&
        e1?.fechadelApunte == e2?.fechadelApunte;
  }

  @override
  int hash(ConversacionesSecretasRecord? e) => const ListEquality()
      .hash([e?.conversacion, e?.paciente, e?.fechadelApunte]);

  @override
  bool isValidKey(Object? o) => o is ConversacionesSecretasRecord;
}
