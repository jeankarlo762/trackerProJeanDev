import '../database.dart';

class VwAgentsInfoTable extends SupabaseTable<VwAgentsInfoRow> {
  @override
  String get tableName => 'vw_agents_info';

  @override
  VwAgentsInfoRow createRow(Map<String, dynamic> data) => VwAgentsInfoRow(data);
}

class VwAgentsInfoRow extends SupabaseDataRow {
  VwAgentsInfoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwAgentsInfoTable();

  String? get loggedInUsername => getField<String>('logged_in_username');
  set loggedInUsername(String? value) =>
      setField<String>('logged_in_username', value);

  String? get hostname => getField<String>('hostname');
  set hostname(String? value) => setField<String>('hostname', value);

  String? get healthStatus => getField<String>('health_status');
  set healthStatus(String? value) => setField<String>('health_status', value);

  int? get clientId => getField<int>('client_id');
  set clientId(int? value) => setField<int>('client_id', value);

  int? get collaboratorId => getField<int>('collaborator_id');
  set collaboratorId(int? value) => setField<int>('collaborator_id', value);

  String? get siteName => getField<String>('site_name');
  set siteName(String? value) => setField<String>('site_name', value);
}
