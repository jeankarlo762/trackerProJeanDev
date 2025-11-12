import '../database.dart';

class VwFabricantesKpiTable extends SupabaseTable<VwFabricantesKpiRow> {
  @override
  String get tableName => 'vw_fabricantes_kpi';

  @override
  VwFabricantesKpiRow createRow(Map<String, dynamic> data) =>
      VwFabricantesKpiRow(data);
}

class VwFabricantesKpiRow extends SupabaseDataRow {
  VwFabricantesKpiRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwFabricantesKpiTable();

  String? get manufacturer => getField<String>('manufacturer');
  set manufacturer(String? value) => setField<String>('manufacturer', value);

  int? get totalPorFabricante => getField<int>('total_por_fabricante');
  set totalPorFabricante(int? value) =>
      setField<int>('total_por_fabricante', value);

  double? get totalGeral => getField<double>('total_geral');
  set totalGeral(double? value) => setField<double>('total_geral', value);

  double? get percTotal => getField<double>('perc_total');
  set percTotal(double? value) => setField<double>('perc_total', value);

  int? get posicao => getField<int>('posicao');
  set posicao(int? value) => setField<int>('posicao', value);
}
