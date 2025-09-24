// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TurnoStruct extends BaseStruct {
  TurnoStruct({
    String? hInicio,
    String? hFin,
    int? cantidad,
    bool? check,
  })  : _hInicio = hInicio,
        _hFin = hFin,
        _cantidad = cantidad,
        _check = check;

  // "h_inicio" field.
  String? _hInicio;
  String get hInicio => _hInicio ?? '';
  set hInicio(String? val) => _hInicio = val;

  bool hasHInicio() => _hInicio != null;

  // "h_fin" field.
  String? _hFin;
  String get hFin => _hFin ?? '';
  set hFin(String? val) => _hFin = val;

  bool hasHFin() => _hFin != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  set cantidad(int? val) => _cantidad = val;

  void incrementCantidad(int amount) => cantidad = cantidad + amount;

  bool hasCantidad() => _cantidad != null;

  // "check" field.
  bool? _check;
  bool get check => _check ?? false;
  set check(bool? val) => _check = val;

  bool hasCheck() => _check != null;

  static TurnoStruct fromMap(Map<String, dynamic> data) => TurnoStruct(
        hInicio: data['h_inicio'] as String?,
        hFin: data['h_fin'] as String?,
        cantidad: castToType<int>(data['cantidad']),
        check: data['check'] as bool?,
      );

  static TurnoStruct? maybeFromMap(dynamic data) =>
      data is Map ? TurnoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'h_inicio': _hInicio,
        'h_fin': _hFin,
        'cantidad': _cantidad,
        'check': _check,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'h_inicio': serializeParam(
          _hInicio,
          ParamType.String,
        ),
        'h_fin': serializeParam(
          _hFin,
          ParamType.String,
        ),
        'cantidad': serializeParam(
          _cantidad,
          ParamType.int,
        ),
        'check': serializeParam(
          _check,
          ParamType.bool,
        ),
      }.withoutNulls;

  static TurnoStruct fromSerializableMap(Map<String, dynamic> data) =>
      TurnoStruct(
        hInicio: deserializeParam(
          data['h_inicio'],
          ParamType.String,
          false,
        ),
        hFin: deserializeParam(
          data['h_fin'],
          ParamType.String,
          false,
        ),
        cantidad: deserializeParam(
          data['cantidad'],
          ParamType.int,
          false,
        ),
        check: deserializeParam(
          data['check'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'TurnoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TurnoStruct &&
        hInicio == other.hInicio &&
        hFin == other.hFin &&
        cantidad == other.cantidad &&
        check == other.check;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([hInicio, hFin, cantidad, check]);
}

TurnoStruct createTurnoStruct({
  String? hInicio,
  String? hFin,
  int? cantidad,
  bool? check,
}) =>
    TurnoStruct(
      hInicio: hInicio,
      hFin: hFin,
      cantidad: cantidad,
      check: check,
    );
