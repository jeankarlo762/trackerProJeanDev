// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserProfileStruct extends BaseStruct {
  UserProfileStruct({
    String? id,
    String? fullName,
    String? avatarUrl,
    int? clientId,
  })  : _id = id,
        _fullName = fullName,
        _avatarUrl = avatarUrl,
        _clientId = clientId;

  // "id" field.
  String? _id;
  String get id => _id ?? '1';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "full_name" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  set fullName(String? val) => _fullName = val;

  bool hasFullName() => _fullName != null;

  // "avatar_url" field.
  String? _avatarUrl;
  String get avatarUrl => _avatarUrl ?? '';
  set avatarUrl(String? val) => _avatarUrl = val;

  bool hasAvatarUrl() => _avatarUrl != null;

  // "client_id" field.
  int? _clientId;
  int get clientId => _clientId ?? 1;
  set clientId(int? val) => _clientId = val;

  void incrementClientId(int amount) => clientId = clientId + amount;

  bool hasClientId() => _clientId != null;

  static UserProfileStruct fromMap(Map<String, dynamic> data) =>
      UserProfileStruct(
        id: data['id'] as String?,
        fullName: data['full_name'] as String?,
        avatarUrl: data['avatar_url'] as String?,
        clientId: castToType<int>(data['client_id']),
      );

  static UserProfileStruct? maybeFromMap(dynamic data) => data is Map
      ? UserProfileStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'full_name': _fullName,
        'avatar_url': _avatarUrl,
        'client_id': _clientId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'full_name': serializeParam(
          _fullName,
          ParamType.String,
        ),
        'avatar_url': serializeParam(
          _avatarUrl,
          ParamType.String,
        ),
        'client_id': serializeParam(
          _clientId,
          ParamType.int,
        ),
      }.withoutNulls;

  static UserProfileStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserProfileStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        fullName: deserializeParam(
          data['full_name'],
          ParamType.String,
          false,
        ),
        avatarUrl: deserializeParam(
          data['avatar_url'],
          ParamType.String,
          false,
        ),
        clientId: deserializeParam(
          data['client_id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'UserProfileStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserProfileStruct &&
        id == other.id &&
        fullName == other.fullName &&
        avatarUrl == other.avatarUrl &&
        clientId == other.clientId;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, fullName, avatarUrl, clientId]);
}

UserProfileStruct createUserProfileStruct({
  String? id,
  String? fullName,
  String? avatarUrl,
  int? clientId,
}) =>
    UserProfileStruct(
      id: id,
      fullName: fullName,
      avatarUrl: avatarUrl,
      clientId: clientId,
    );
