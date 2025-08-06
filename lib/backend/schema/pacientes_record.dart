import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PacientesRecord extends FirestoreRecord {
  PacientesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "Oficio" field.
  String? _oficio;
  String get oficio => _oficio ?? '';
  bool hasOficio() => _oficio != null;

  // "FechaNacimiento" field.
  DateTime? _fechaNacimiento;
  DateTime? get fechaNacimiento => _fechaNacimiento;
  bool hasFechaNacimiento() => _fechaNacimiento != null;

  // "FechaInicioSesiones" field.
  DateTime? _fechaInicioSesiones;
  DateTime? get fechaInicioSesiones => _fechaInicioSesiones;
  bool hasFechaInicioSesiones() => _fechaInicioSesiones != null;

  // "Activo" field.
  bool? _activo;
  bool get activo => _activo ?? false;
  bool hasActivo() => _activo != null;

  void _initializeFields() {
    _nombre = snapshotData['Nombre'] as String?;
    _oficio = snapshotData['Oficio'] as String?;
    _fechaNacimiento = snapshotData['FechaNacimiento'] as DateTime?;
    _fechaInicioSesiones = snapshotData['FechaInicioSesiones'] as DateTime?;
    _activo = snapshotData['Activo'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Pacientes');

  static Stream<PacientesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PacientesRecord.fromSnapshot(s));

  static Future<PacientesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PacientesRecord.fromSnapshot(s));

  static PacientesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PacientesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PacientesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PacientesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PacientesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PacientesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPacientesRecordData({
  String? nombre,
  String? oficio,
  DateTime? fechaNacimiento,
  DateTime? fechaInicioSesiones,
  bool? activo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre': nombre,
      'Oficio': oficio,
      'FechaNacimiento': fechaNacimiento,
      'FechaInicioSesiones': fechaInicioSesiones,
      'Activo': activo,
    }.withoutNulls,
  );

  return firestoreData;
}

class PacientesRecordDocumentEquality implements Equality<PacientesRecord> {
  const PacientesRecordDocumentEquality();

  @override
  bool equals(PacientesRecord? e1, PacientesRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.oficio == e2?.oficio &&
        e1?.fechaNacimiento == e2?.fechaNacimiento &&
        e1?.fechaInicioSesiones == e2?.fechaInicioSesiones &&
        e1?.activo == e2?.activo;
  }

  @override
  int hash(PacientesRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.oficio,
        e?.fechaNacimiento,
        e?.fechaInicioSesiones,
        e?.activo
      ]);

  @override
  bool isValidKey(Object? o) => o is PacientesRecord;
}
