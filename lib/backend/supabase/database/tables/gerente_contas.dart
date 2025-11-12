import '../database.dart';

class GerenteContasTable extends SupabaseTable<GerenteContasRow> {
  @override
  String get tableName => 'gerente_contas';

  @override
  GerenteContasRow createRow(Map<String, dynamic> data) =>
      GerenteContasRow(data);
}

class GerenteContasRow extends SupabaseDataRow {
  GerenteContasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GerenteContasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String? get whatsapp => getField<String>('whatsapp');
  set whatsapp(String? value) => setField<String>('whatsapp', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);
}
