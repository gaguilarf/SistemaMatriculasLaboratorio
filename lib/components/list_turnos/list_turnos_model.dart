import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'list_turnos_widget.dart' show ListTurnosWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListTurnosModel extends FlutterFlowModel<ListTurnosWidget> {
  ///  Local state fields for this component.

  List<TurnoStruct> fijoLista = [];
  void addToFijoLista(TurnoStruct item) => fijoLista.add(item);
  void removeFromFijoLista(TurnoStruct item) => fijoLista.remove(item);
  void removeAtIndexFromFijoLista(int index) => fijoLista.removeAt(index);
  void insertAtIndexInFijoLista(int index, TurnoStruct item) =>
      fijoLista.insert(index, item);
  void updateFijoListaAtIndex(int index, Function(TurnoStruct) updateFn) =>
      fijoLista[index] = updateFn(fijoLista[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for Checkbox widget.
  Map<TurnoStruct, bool> checkboxValueMap = {};
  List<TurnoStruct> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
