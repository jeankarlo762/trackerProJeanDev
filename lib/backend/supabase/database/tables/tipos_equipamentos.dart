import '../database.dart';

class TiposEquipamentosTable extends SupabaseTable<TiposEquipamentosRow> {
  @override
  String get tableName => 'tipos_equipamentos';

  @override
  TiposEquipamentosRow createRow(Map<String, dynamic> data) =>
      TiposEquipamentosRow(data);
}

class TiposEquipamentosRow extends SupabaseDataRow {
  TiposEquipamentosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TiposEquipamentosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);
}
