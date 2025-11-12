// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TicketStruct extends BaseStruct {
  TicketStruct({
    String? hostname,
    String? solicitante,
    String? descricao,
    String? telefoneColab,
    String? nomeColab,
  })  : _hostname = hostname,
        _solicitante = solicitante,
        _descricao = descricao,
        _telefoneColab = telefoneColab,
        _nomeColab = nomeColab;

  // "hostname" field.
  String? _hostname;
  String get hostname => _hostname ?? '';
  set hostname(String? val) => _hostname = val;

  bool hasHostname() => _hostname != null;

  // "solicitante" field.
  String? _solicitante;
  String get solicitante => _solicitante ?? '';
  set solicitante(String? val) => _solicitante = val;

  bool hasSolicitante() => _solicitante != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  // "telefoneColab" field.
  String? _telefoneColab;
  String get telefoneColab => _telefoneColab ?? '';
  set telefoneColab(String? val) => _telefoneColab = val;

  bool hasTelefoneColab() => _telefoneColab != null;

  // "nomeColab" field.
  String? _nomeColab;
  String get nomeColab => _nomeColab ?? '';
  set nomeColab(String? val) => _nomeColab = val;

  bool hasNomeColab() => _nomeColab != null;

  static TicketStruct fromMap(Map<String, dynamic> data) => TicketStruct(
        hostname: data['hostname'] as String?,
        solicitante: data['solicitante'] as String?,
        descricao: data['descricao'] as String?,
        telefoneColab: data['telefoneColab'] as String?,
        nomeColab: data['nomeColab'] as String?,
      );

  static TicketStruct? maybeFromMap(dynamic data) =>
      data is Map ? TicketStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'hostname': _hostname,
        'solicitante': _solicitante,
        'descricao': _descricao,
        'telefoneColab': _telefoneColab,
        'nomeColab': _nomeColab,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'hostname': serializeParam(
          _hostname,
          ParamType.String,
        ),
        'solicitante': serializeParam(
          _solicitante,
          ParamType.String,
        ),
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
        'telefoneColab': serializeParam(
          _telefoneColab,
          ParamType.String,
        ),
        'nomeColab': serializeParam(
          _nomeColab,
          ParamType.String,
        ),
      }.withoutNulls;

  static TicketStruct fromSerializableMap(Map<String, dynamic> data) =>
      TicketStruct(
        hostname: deserializeParam(
          data['hostname'],
          ParamType.String,
          false,
        ),
        solicitante: deserializeParam(
          data['solicitante'],
          ParamType.String,
          false,
        ),
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
        telefoneColab: deserializeParam(
          data['telefoneColab'],
          ParamType.String,
          false,
        ),
        nomeColab: deserializeParam(
          data['nomeColab'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TicketStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TicketStruct &&
        hostname == other.hostname &&
        solicitante == other.solicitante &&
        descricao == other.descricao &&
        telefoneColab == other.telefoneColab &&
        nomeColab == other.nomeColab;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([hostname, solicitante, descricao, telefoneColab, nomeColab]);
}

TicketStruct createTicketStruct({
  String? hostname,
  String? solicitante,
  String? descricao,
  String? telefoneColab,
  String? nomeColab,
}) =>
    TicketStruct(
      hostname: hostname,
      solicitante: solicitante,
      descricao: descricao,
      telefoneColab: telefoneColab,
      nomeColab: nomeColab,
    );
