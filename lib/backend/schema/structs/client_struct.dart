// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClientStruct extends BaseStruct {
  ClientStruct({
    int? id,
    String? name,
    String? cnpj,
    String? logo,
    String? site,
    int? gerenteContasId,
  })  : _id = id,
        _name = name,
        _cnpj = cnpj,
        _logo = logo,
        _site = site,
        _gerenteContasId = gerenteContasId;

  // "id" field.
  int? _id;
  int get id => _id ?? 1;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? 'Getel Tecnologia';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "cnpj" field.
  String? _cnpj;
  String get cnpj => _cnpj ?? '';
  set cnpj(String? val) => _cnpj = val;

  bool hasCnpj() => _cnpj != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  set logo(String? val) => _logo = val;

  bool hasLogo() => _logo != null;

  // "site" field.
  String? _site;
  String get site => _site ?? '';
  set site(String? val) => _site = val;

  bool hasSite() => _site != null;

  // "gerente_contas_id" field.
  int? _gerenteContasId;
  int get gerenteContasId => _gerenteContasId ?? 0;
  set gerenteContasId(int? val) => _gerenteContasId = val;

  void incrementGerenteContasId(int amount) =>
      gerenteContasId = gerenteContasId + amount;

  bool hasGerenteContasId() => _gerenteContasId != null;

  static ClientStruct fromMap(Map<String, dynamic> data) => ClientStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        cnpj: data['cnpj'] as String?,
        logo: data['logo'] as String?,
        site: data['site'] as String?,
        gerenteContasId: castToType<int>(data['gerente_contas_id']),
      );

  static ClientStruct? maybeFromMap(dynamic data) =>
      data is Map ? ClientStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'cnpj': _cnpj,
        'logo': _logo,
        'site': _site,
        'gerente_contas_id': _gerenteContasId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'cnpj': serializeParam(
          _cnpj,
          ParamType.String,
        ),
        'logo': serializeParam(
          _logo,
          ParamType.String,
        ),
        'site': serializeParam(
          _site,
          ParamType.String,
        ),
        'gerente_contas_id': serializeParam(
          _gerenteContasId,
          ParamType.int,
        ),
      }.withoutNulls;

  static ClientStruct fromSerializableMap(Map<String, dynamic> data) =>
      ClientStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        cnpj: deserializeParam(
          data['cnpj'],
          ParamType.String,
          false,
        ),
        logo: deserializeParam(
          data['logo'],
          ParamType.String,
          false,
        ),
        site: deserializeParam(
          data['site'],
          ParamType.String,
          false,
        ),
        gerenteContasId: deserializeParam(
          data['gerente_contas_id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ClientStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ClientStruct &&
        id == other.id &&
        name == other.name &&
        cnpj == other.cnpj &&
        logo == other.logo &&
        site == other.site &&
        gerenteContasId == other.gerenteContasId;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, name, cnpj, logo, site, gerenteContasId]);
}

ClientStruct createClientStruct({
  int? id,
  String? name,
  String? cnpj,
  String? logo,
  String? site,
  int? gerenteContasId,
}) =>
    ClientStruct(
      id: id,
      name: name,
      cnpj: cnpj,
      logo: logo,
      site: site,
      gerenteContasId: gerenteContasId,
    );
