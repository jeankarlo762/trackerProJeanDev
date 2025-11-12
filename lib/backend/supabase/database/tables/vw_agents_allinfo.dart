import '../database.dart';

class VwAgentsAllinfoTable extends SupabaseTable<VwAgentsAllinfoRow> {
  @override
  String get tableName => 'vw_agents_allinfo';

  @override
  VwAgentsAllinfoRow createRow(Map<String, dynamic> data) =>
      VwAgentsAllinfoRow(data);
}

class VwAgentsAllinfoRow extends SupabaseDataRow {
  VwAgentsAllinfoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwAgentsAllinfoTable();

  String? get loggedInUsername => getField<String>('logged_in_username');
  set loggedInUsername(String? value) =>
      setField<String>('logged_in_username', value);

  String? get hostname => getField<String>('hostname');
  set hostname(String? value) => setField<String>('hostname', value);

  String? get healthStatus => getField<String>('health_status');
  set healthStatus(String? value) => setField<String>('health_status', value);

  int? get siteId => getField<int>('site_id');
  set siteId(int? value) => setField<int>('site_id', value);

  String? get siteName => getField<String>('site_name');
  set siteName(String? value) => setField<String>('site_name', value);
}
