import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_usuario')) {
        try {
          final serializedData = prefs.getString('ff_usuario') ?? '{}';
          _usuario =
              EstudianteStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<CursoStruct> _cursosGenerales = [
    CursoStruct.fromSerializableMap(jsonDecode(
        '{\"carrera\":\"Ingeniería de Sistemas\",\"nombre\":\"Calidad de Software\",\"turnos\":\"[\\\"{\\\\\\\"h_inicio\\\\\\\":\\\\\\\"9:30\\\\\\\",\\\\\\\"h_fin\\\\\\\":\\\\\\\"11:30\\\\\\\",\\\\\\\"cantidad\\\\\\\":\\\\\\\"18\\\\\\\",\\\\\\\"check\\\\\\\":\\\\\\\"false\\\\\\\"}\\\",\\\"{\\\\\\\"h_inicio\\\\\\\":\\\\\\\"14:00\\\\\\\",\\\\\\\"h_fin\\\\\\\":\\\\\\\"14:20\\\\\\\",\\\\\\\"cantidad\\\\\\\":\\\\\\\"25\\\\\\\",\\\\\\\"check\\\\\\\":\\\\\\\"false\\\\\\\"}\\\"]\"}')),
    CursoStruct.fromSerializableMap(jsonDecode(
        '{\"carrera\":\"Ingeniería de Sistemas\",\"nombre\":\"Programación Básica 1\",\"turnos\":\"[\\\"{\\\\\\\"h_inicio\\\\\\\":\\\\\\\"7:00\\\\\\\",\\\\\\\"h_fin\\\\\\\":\\\\\\\"8:50\\\\\\\",\\\\\\\"cantidad\\\\\\\":\\\\\\\"18\\\\\\\",\\\\\\\"check\\\\\\\":\\\\\\\"false\\\\\\\"}\\\",\\\"{\\\\\\\"h_inicio\\\\\\\":\\\\\\\"9:00\\\\\\\",\\\\\\\"h_fin\\\\\\\":\\\\\\\"11:30\\\\\\\",\\\\\\\"cantidad\\\\\\\":\\\\\\\"8\\\\\\\",\\\\\\\"check\\\\\\\":\\\\\\\"false\\\\\\\"}\\\"]\"}'))
  ];
  List<CursoStruct> get cursosGenerales => _cursosGenerales;
  set cursosGenerales(List<CursoStruct> value) {
    _cursosGenerales = value;
  }

  void addToCursosGenerales(CursoStruct value) {
    cursosGenerales.add(value);
  }

  void removeFromCursosGenerales(CursoStruct value) {
    cursosGenerales.remove(value);
  }

  void removeAtIndexFromCursosGenerales(int index) {
    cursosGenerales.removeAt(index);
  }

  void updateCursosGeneralesAtIndex(
    int index,
    CursoStruct Function(CursoStruct) updateFn,
  ) {
    cursosGenerales[index] = updateFn(_cursosGenerales[index]);
  }

  void insertAtIndexInCursosGenerales(int index, CursoStruct value) {
    cursosGenerales.insert(index, value);
  }

  EstudianteStruct _usuario = EstudianteStruct();
  EstudianteStruct get usuario => _usuario;
  set usuario(EstudianteStruct value) {
    _usuario = value;
    prefs.setString('ff_usuario', value.serialize());
  }

  void updateUsuarioStruct(Function(EstudianteStruct) updateFn) {
    updateFn(_usuario);
    prefs.setString('ff_usuario', _usuario.serialize());
  }

  List<EstudianteStruct> _usuariosD = [
    EstudianteStruct.fromSerializableMap(jsonDecode(
        '{\"correo\":\"vchambillap@unsa.edu.pe\",\"nombre\":\"Valentina Chambilla Perca\",\"cursos\":\"[\\\"{\\\\\\\"carrera\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"nombre\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"turnos\\\\\\\":\\\\\\\"[\\\\\\\\\\\\\\\"{\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"h_inicio\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"Hello World\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"h_fin\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"Hello World\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"cantidad\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"0\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"check\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"false\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"}\\\\\\\\\\\\\\\"]\\\\\\\"}\\\"]\"}')),
    EstudianteStruct.fromSerializableMap(jsonDecode(
        '{\"correo\":\"bhanccoco@unsa.edu.pe\",\"nombre\":\"Bryan Orlando Hancco Condori\",\"cursos\":\"[\\\"{\\\\\\\"carrera\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"nombre\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"turnos\\\\\\\":\\\\\\\"[\\\\\\\\\\\\\\\"{\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"h_inicio\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"Hello World\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"h_fin\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"Hello World\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"cantidad\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"0\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"check\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"false\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"}\\\\\\\\\\\\\\\"]\\\\\\\"}\\\"]\"}'))
  ];
  List<EstudianteStruct> get usuariosD => _usuariosD;
  set usuariosD(List<EstudianteStruct> value) {
    _usuariosD = value;
  }

  void addToUsuariosD(EstudianteStruct value) {
    usuariosD.add(value);
  }

  void removeFromUsuariosD(EstudianteStruct value) {
    usuariosD.remove(value);
  }

  void removeAtIndexFromUsuariosD(int index) {
    usuariosD.removeAt(index);
  }

  void updateUsuariosDAtIndex(
    int index,
    EstudianteStruct Function(EstudianteStruct) updateFn,
  ) {
    usuariosD[index] = updateFn(_usuariosD[index]);
  }

  void insertAtIndexInUsuariosD(int index, EstudianteStruct value) {
    usuariosD.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
