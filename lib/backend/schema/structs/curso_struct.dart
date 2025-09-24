// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CursoStruct extends BaseStruct {
  CursoStruct({
    String? carrera,
    String? nombre,
    List<TurnoStruct>? turnos,
  })  : _carrera = carrera,
        _nombre = nombre,
        _turnos = turnos;

  // "carrera" field.
  String? _carrera;
  String get carrera => _carrera ?? '';
  set carrera(String? val) => _carrera = val;

  bool hasCarrera() => _carrera != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  // "turnos" field.
  List<TurnoStruct>? _turnos;
  List<TurnoStruct> get turnos => _turnos ?? const [];
  set turnos(List<TurnoStruct>? val) => _turnos = val;

  void updateTurnos(Function(List<TurnoStruct>) updateFn) {
    updateFn(_turnos ??= []);
  }

  bool hasTurnos() => _turnos != null;

  static CursoStruct fromMap(Map<String, dynamic> data) => CursoStruct(
        carrera: data['carrera'] as String?,
        nombre: data['nombre'] as String?,
        turnos: getStructList(
          data['turnos'],
          TurnoStruct.fromMap,
        ),
      );

  static CursoStruct? maybeFromMap(dynamic data) =>
      data is Map ? CursoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'carrera': _carrera,
        'nombre': _nombre,
        'turnos': _turnos?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'carrera': serializeParam(
          _carrera,
          ParamType.String,
        ),
        'nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'turnos': serializeParam(
          _turnos,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static CursoStruct fromSerializableMap(Map<String, dynamic> data) =>
      CursoStruct(
        carrera: deserializeParam(
          data['carrera'],
          ParamType.String,
          false,
        ),
        nombre: deserializeParam(
          data['nombre'],
          ParamType.String,
          false,
        ),
        turnos: deserializeStructParam<TurnoStruct>(
          data['turnos'],
          ParamType.DataStruct,
          true,
          structBuilder: TurnoStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CursoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CursoStruct &&
        carrera == other.carrera &&
        nombre == other.nombre &&
        listEquality.equals(turnos, other.turnos);
  }

  @override
  int get hashCode => const ListEquality().hash([carrera, nombre, turnos]);
}

CursoStruct createCursoStruct({
  String? carrera,
  String? nombre,
}) =>
    CursoStruct(
      carrera: carrera,
      nombre: nombre,
    );
