import '../database.dart';

class ViewColaboradorDetailsTable
    extends SupabaseTable<ViewColaboradorDetailsRow> {
  @override
  String get tableName => 'view_colaborador_details';

  @override
  ViewColaboradorDetailsRow createRow(Map<String, dynamic> data) =>
      ViewColaboradorDetailsRow(data);
}

class ViewColaboradorDetailsRow extends SupabaseDataRow {
  ViewColaboradorDetailsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewColaboradorDetailsTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get sobrenome => getField<String>('sobrenome');
  set sobrenome(String? value) => setField<String>('sobrenome', value);

  String? get nomeCompleto => getField<String>('nome_completo');
  set nomeCompleto(String? value) => setField<String>('nome_completo', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get cargo => getField<String>('cargo');
  set cargo(String? value) => setField<String>('cargo', value);

  int? get siteId => getField<int>('site_id');
  set siteId(int? value) => setField<int>('site_id', value);

  String? get siteNome => getField<String>('site_nome');
  set siteNome(String? value) => setField<String>('site_nome', value);

  int? get clientId => getField<int>('client_id');
  set clientId(int? value) => setField<int>('client_id', value);

  String? get clienteNome => getField<String>('cliente_nome');
  set clienteNome(String? value) => setField<String>('cliente_nome', value);

  String? get clienteLogo => getField<String>('cliente_logo');
  set clienteLogo(String? value) => setField<String>('cliente_logo', value);

  String? get razaoSocial => getField<String>('razao_social');
  set razaoSocial(String? value) => setField<String>('razao_social', value);

  String? get clienteSite => getField<String>('cliente_site');
  set clienteSite(String? value) => setField<String>('cliente_site', value);

  String? get userProfileId => getField<String>('user_profile_id');
  set userProfileId(String? value) =>
      setField<String>('user_profile_id', value);

  String? get perfilNome => getField<String>('perfil_nome');
  set perfilNome(String? value) => setField<String>('perfil_nome', value);

  String? get fotoUrl => getField<String>('foto_url');
  set fotoUrl(String? value) => setField<String>('foto_url', value);

  int? get perfilClienteId => getField<int>('perfil_cliente_id');
  set perfilClienteId(int? value) => setField<int>('perfil_cliente_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get diasDesdeAtualizacao => getField<int>('dias_desde_atualizacao');
  set diasDesdeAtualizacao(int? value) =>
      setField<int>('dias_desde_atualizacao', value);

  bool? get flagAtivo => getField<bool>('flag_ativo');
  set flagAtivo(bool? value) => setField<bool>('flag_ativo', value);
}
