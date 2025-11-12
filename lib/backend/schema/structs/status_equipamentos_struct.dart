// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StatusEquipamentosStruct extends BaseStruct {
  StatusEquipamentosStruct({
    String? descricao,
    int? valor,
  })  : _descricao = descricao,
        _valor = valor;

  // "Descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  // "Valor" field.
  int? _valor;
  int get valor => _valor ?? 0;
  set valor(int? val) => _valor = val;

  void incrementValor(int amount) => valor = valor + amount;

  bool hasValor() => _valor != null;

  static StatusEquipamentosStruct fromMap(Map<String, dynamic> data) =>
      StatusEquipamentosStruct(
        descricao: data['Descricao'] as String?,
        valor: castToType<int>(data['Valor']),
      );

  static StatusEquipamentosStruct? maybeFromMap(dynamic data) => data is Map
      ? StatusEquipamentosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Descricao': _descricao,
        'Valor': _valor,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
        'Valor': serializeParam(
          _valor,
          ParamType.int,
        ),
      }.withoutNulls;

  static StatusEquipamentosStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      StatusEquipamentosStruct(
        descricao: deserializeParam(
          data['Descricao'],
          ParamType.String,
          false,
        ),
        valor: deserializeParam(
          data['Valor'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'StatusEquipamentosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StatusEquipamentosStruct &&
        descricao == other.descricao &&
        valor == other.valor;
  }

  @override
  int get hashCode => const ListEquality().hash([descricao, valor]);
}

StatusEquipamentosStruct createStatusEquipamentosStruct({
  String? descricao,
  int? valor,
}) =>
    StatusEquipamentosStruct(
      descricao: descricao,
      valor: valor,
    );
