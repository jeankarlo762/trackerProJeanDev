import '../database.dart';

class VwInstalledSoftwaresTable extends SupabaseTable<VwInstalledSoftwaresRow> {
  @override
  String get tableName => 'vw_installed_softwares';

  @override
  VwInstalledSoftwaresRow createRow(Map<String, dynamic> data) =>
      VwInstalledSoftwaresRow(data);
}

class VwInstalledSoftwaresRow extends SupabaseDataRow {
  VwInstalledSoftwaresRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwInstalledSoftwaresTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get agentId => getField<int>('agent_id');
  set agentId(int? value) => setField<int>('agent_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get size => getField<String>('size');
  set size(String? value) => setField<String>('size', value);

  String? get version => getField<String>('version');
  set version(String? value) => setField<String>('version', value);

  String? get installDate => getField<String>('install_date');
  set installDate(String? value) => setField<String>('install_date', value);

  String? get publisher => getField<String>('publisher');
  set publisher(String? value) => setField<String>('publisher', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  String? get source => getField<String>('source');
  set source(String? value) => setField<String>('source', value);

  String? get uninstall => getField<String>('uninstall');
  set uninstall(String? value) => setField<String>('uninstall', value);
}
