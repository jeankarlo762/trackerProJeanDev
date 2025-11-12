import '../database.dart';

class UserProfilesTable extends SupabaseTable<UserProfilesRow> {
  @override
  String get tableName => 'user_profiles';

  @override
  UserProfilesRow createRow(Map<String, dynamic> data) => UserProfilesRow(data);
}

class UserProfilesRow extends SupabaseDataRow {
  UserProfilesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserProfilesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get fullName => getField<String>('full_name');
  set fullName(String? value) => setField<String>('full_name', value);

  String? get avatarUrl => getField<String>('avatar_url');
  set avatarUrl(String? value) => setField<String>('avatar_url', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get clientId => getField<int>('client_id');
  set clientId(int? value) => setField<int>('client_id', value);
}
