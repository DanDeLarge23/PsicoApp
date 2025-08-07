import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistorialClinicoRecord extends FirestoreRecord {
  HistorialClinicoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "NumeroCita" field.
  String? _numeroCita;
  String get numeroCita => _numeroCita ?? '';
  bool hasNumeroCita() => _numeroCita != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "paciente" field.
  DocumentReference? _paciente;
  DocumentReference? get paciente => _paciente;
  bool hasPaciente() => _paciente != null;

  // "conversado" field.
  String? _conversado;
  String get conversado => _conversado ?? '';
  bool hasConversado() => _conversado != null;

  // "Consejos" field.
  bool? _consejos;
  bool get consejos => _consejos ?? false;
  bool hasConsejos() => _consejos != null;

  void _initializeFields() {
    _numeroCita = snapshotData['NumeroCita'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
    _paciente = snapshotData['paciente'] as DocumentReference?;
    _conversado = snapshotData['conversado'] as String?;
    _consejos = snapshotData['Consejos'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('HistorialClinico');

  static Stream<HistorialClinicoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HistorialClinicoRecord.fromSnapshot(s));

  static Future<HistorialClinicoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => HistorialClinicoRecord.fromSnapshot(s));

  static HistorialClinicoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HistorialClinicoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HistorialClinicoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HistorialClinicoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HistorialClinicoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HistorialClinicoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHistorialClinicoRecordData({
  String? numeroCita,
  DateTime? fecha,
  DocumentReference? paciente,
  String? conversado,
  bool? consejos,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NumeroCita': numeroCita,
      'fecha': fecha,
      'paciente': paciente,
      'conversado': conversado,
      'Consejos': consejos,
    }.withoutNulls,
  );

  return firestoreData;
}

class HistorialClinicoRecordDocumentEquality
    implements Equality<HistorialClinicoRecord> {
  const HistorialClinicoRecordDocumentEquality();

  @override
  bool equals(HistorialClinicoRecord? e1, HistorialClinicoRecord? e2) {
    return e1?.numeroCita == e2?.numeroCita &&
        e1?.fecha == e2?.fecha &&
        e1?.paciente == e2?.paciente &&
        e1?.conversado == e2?.conversado &&
        e1?.consejos == e2?.consejos;
  }

  @override
  int hash(HistorialClinicoRecord? e) => const ListEquality()
      .hash([e?.numeroCita, e?.fecha, e?.paciente, e?.conversado, e?.consejos]);

  @override
  bool isValidKey(Object? o) => o is HistorialClinicoRecord;
}
