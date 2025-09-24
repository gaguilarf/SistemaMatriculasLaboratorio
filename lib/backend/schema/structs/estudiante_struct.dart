// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EstudianteStruct extends BaseStruct {
  EstudianteStruct({
    String? correo,
    String? nombre,
    List<CursoStruct>? cursos,
  })  : _correo = correo,
        _nombre = nombre,
        _cursos = cursos;

  // "correo" field.
  String? _correo;
  String get correo => _correo ?? '';
  set correo(String? val) => _correo = val;

  bool hasCorreo() => _correo != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;

  bool hasNombre() => _nombre != null;

  // "cursos" field.
  List<CursoStruct>? _cursos;
  List<CursoStruct> get cursos => _cursos ?? const [];
  set cursos(List<CursoStruct>? val) => _cursos = val;

  void updateCursos(Function(List<CursoStruct>) updateFn) {
    updateFn(_cursos ??= []);
  }

  bool hasCursos() => _cursos != null;

  static EstudianteStruct fromMap(Map<String, dynamic> data) =>
      EstudianteStruct(
        correo: data['correo'] as String?,
        nombre: data['nombre'] as String?,
        cursos: getStructList(
          data['cursos'],
          CursoStruct.fromMap,
        ),
      );

  static EstudianteStruct? maybeFromMap(dynamic data) => data is Map
      ? EstudianteStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'correo': _correo,
        'nombre': _nombre,
        'cursos': _cursos?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'correo': serializeParam(
          _correo,
          ParamType.String,
        ),
        'nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'cursos': serializeParam(
          _cursos,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static EstudianteStruct fromSerializableMap(Map<String, dynamic> data) =>
      EstudianteStruct(
        correo: deserializeParam(
          data['correo'],
          ParamType.String,
          false,
        ),
        nombre: deserializeParam(
          data['nombre'],
          ParamType.String,
          false,
        ),
        cursos: deserializeStructParam<CursoStruct>(
          data['cursos'],
          ParamType.DataStruct,
          true,
          structBuilder: CursoStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'EstudianteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is EstudianteStruct &&
        correo == other.correo &&
        nombre == other.nombre &&
        listEquality.equals(cursos, other.cursos);
  }

  @override
  int get hashCode => const ListEquality().hash([correo, nombre, cursos]);
}

EstudianteStruct createEstudianteStruct({
  String? correo,
  String? nombre,
}) =>
    EstudianteStruct(
      correo: correo,
      nombre: nombre,
    );
