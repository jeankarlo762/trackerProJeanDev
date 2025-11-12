import '../database.dart';

class ClientsClientTable extends SupabaseTable<ClientsClientRow> {
  @override
  String get tableName => 'clients_client';

  @override
  ClientsClientRow createRow(Map<String, dynamic> data) =>
      ClientsClientRow(data);
}

class ClientsClientRow extends SupabaseDataRow {
  ClientsClientRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ClientsClientTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get cnpj => getField<String>('cnpj');
  set cnpj(String? value) => setField<String>('cnpj', value);

  String? get logo => getField<String>('logo');
  set logo(String? value) => setField<String>('logo', value);

  String? get site => getField<String>('site');
  set site(String? value) => setField<String>('site', value);

  int? get gerenteContasId => getField<int>('gerente_contas_id');
  set gerenteContasId(int? value) => setField<int>('gerente_contas_id', value);

  String? get razaoSocial => getField<String>('razao_social');
  set razaoSocial(String? value) => setField<String>('razao_social', value);
}
