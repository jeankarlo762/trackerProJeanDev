import '../database.dart';

class AdressTable extends SupabaseTable<AdressRow> {
  @override
  String get tableName => 'adress';

  @override
  AdressRow createRow(Map<String, dynamic> data) => AdressRow(data);
}

class AdressRow extends SupabaseDataRow {
  AdressRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AdressTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);
}
