import '../database.dart';

class ViewProfileClientTable extends SupabaseTable<ViewProfileClientRow> {
  @override
  String get tableName => 'view_profile_client';

  @override
  ViewProfileClientRow createRow(Map<String, dynamic> data) =>
      ViewProfileClientRow(data);
}

class ViewProfileClientRow extends SupabaseDataRow {
  ViewProfileClientRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewProfileClientTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get userName => getField<String>('user_name');
  set userName(String? value) => setField<String>('user_name', value);

  String? get avatarUrl => getField<String>('avatar_url');
  set avatarUrl(String? value) => setField<String>('avatar_url', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get clientId => getField<int>('client_id');
  set clientId(int? value) => setField<int>('client_id', value);

  String? get clientName => getField<String>('client_name');
  set clientName(String? value) => setField<String>('client_name', value);

  String? get clientRazaoSocial => getField<String>('client_razao_social');
  set clientRazaoSocial(String? value) =>
      setField<String>('client_razao_social', value);

  String? get clientCnpj => getField<String>('client_cnpj');
  set clientCnpj(String? value) => setField<String>('client_cnpj', value);

  String? get clientLogo => getField<String>('client_logo');
  set clientLogo(String? value) => setField<String>('client_logo', value);

  String? get clientSite => getField<String>('client_site');
  set clientSite(String? value) => setField<String>('client_site', value);

  int? get gerenteId => getField<int>('gerente_id');
  set gerenteId(int? value) => setField<int>('gerente_id', value);

  String? get gerenteNome => getField<String>('gerente_nome');
  set gerenteNome(String? value) => setField<String>('gerente_nome', value);

  String? get gerenteWhatsapp => getField<String>('gerente_whatsapp');
  set gerenteWhatsapp(String? value) =>
      setField<String>('gerente_whatsapp', value);

  String? get gerenteEmail => getField<String>('gerente_email');
  set gerenteEmail(String? value) => setField<String>('gerente_email', value);

  String? get gerenteFoto => getField<String>('gerente_foto');
  set gerenteFoto(String? value) => setField<String>('gerente_foto', value);
}
