// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TipoEquipamentosStruct extends BaseStruct {
  TipoEquipamentosStruct({
    int? ordem,
    String? descricao,
  })  : _ordem = ordem,
        _descricao = descricao;

  // "ordem" field.
  int? _ordem;
  int get ordem => _ordem ?? 0;
  set ordem(int? val) => _ordem = val;

  void incrementOrdem(int amount) => ordem = ordem + amount;

  bool hasOrdem() => _ordem != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  static TipoEquipamentosStruct fromMap(Map<String, dynamic> data) =>
      TipoEquipamentosStruct(
        ordem: castToType<int>(data['ordem']),
        descricao: data['descricao'] as String?,
      );

  static TipoEquipamentosStruct? maybeFromMap(dynamic data) => data is Map
      ? TipoEquipamentosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ordem': _ordem,
        'descricao': _descricao,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ordem': serializeParam(
          _ordem,
          ParamType.int,
        ),
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
      }.withoutNulls;

  static TipoEquipamentosStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      TipoEquipamentosStruct(
        ordem: deserializeParam(
          data['ordem'],
          ParamType.int,
          false,
        ),
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TipoEquipamentosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TipoEquipamentosStruct &&
        ordem == other.ordem &&
        descricao == other.descricao;
  }

  @override
  int get hashCode => const ListEquality().hash([ordem, descricao]);
}

TipoEquipamentosStruct createTipoEquipamentosStruct({
  int? ordem,
  String? descricao,
}) =>
    TipoEquipamentosStruct(
      ordem: ordem,
      descricao: descricao,
    );
