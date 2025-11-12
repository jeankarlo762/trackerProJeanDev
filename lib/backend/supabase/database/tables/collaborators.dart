import '../database.dart';

class CollaboratorsTable extends SupabaseTable<CollaboratorsRow> {
  @override
  String get tableName => 'collaborators';

  @override
  CollaboratorsRow createRow(Map<String, dynamic> data) =>
      CollaboratorsRow(data);
}

class CollaboratorsRow extends SupabaseDataRow {
  CollaboratorsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CollaboratorsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String get sobrenome => getField<String>('sobrenome')!;
  set sobrenome(String value) => setField<String>('sobrenome', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);

  String get telefone => getField<String>('telefone')!;
  set telefone(String value) => setField<String>('telefone', value);

  String get position => getField<String>('position')!;
  set position(String value) => setField<String>('position', value);

  int get siteId => getField<int>('site_id')!;
  set siteId(int value) => setField<int>('site_id', value);

  int get clientId => getField<int>('client_id')!;
  set clientId(int value) => setField<int>('client_id', value);

  String? get userProfileId => getField<String>('user_profile_id');
  set userProfileId(String? value) =>
      setField<String>('user_profile_id', value);

  bool? get flagAtivo => getField<bool>('flag_ativo');
  set flagAtivo(bool? value) => setField<bool>('flag_ativo', value);
}
