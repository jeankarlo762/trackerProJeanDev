import '../database.dart';

class SoftwareInstalledsoftwareTable
    extends SupabaseTable<SoftwareInstalledsoftwareRow> {
  @override
  String get tableName => 'software_installedsoftware';

  @override
  SoftwareInstalledsoftwareRow createRow(Map<String, dynamic> data) =>
      SoftwareInstalledsoftwareRow(data);
}

class SoftwareInstalledsoftwareRow extends SupabaseDataRow {
  SoftwareInstalledsoftwareRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SoftwareInstalledsoftwareTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  dynamic? get software => getField<dynamic>('software');
  set software(dynamic? value) => setField<dynamic>('software', value);

  int? get agentId => getField<int>('agent_id');
  set agentId(int? value) => setField<int>('agent_id', value);
}
