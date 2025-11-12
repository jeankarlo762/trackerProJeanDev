import '../database.dart';

class AgentsAgentDisksMetricsTable
    extends SupabaseTable<AgentsAgentDisksMetricsRow> {
  @override
  String get tableName => 'agents_agent_disks_metrics';

  @override
  AgentsAgentDisksMetricsRow createRow(Map<String, dynamic> data) =>
      AgentsAgentDisksMetricsRow(data);
}

class AgentsAgentDisksMetricsRow extends SupabaseDataRow {
  AgentsAgentDisksMetricsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AgentsAgentDisksMetricsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  int? get agentId => getField<int>('agent_id');
  set agentId(int? value) => setField<int>('agent_id', value);

  DateTime get timestamp => getField<DateTime>('timestamp')!;
  set timestamp(DateTime value) => setField<DateTime>('timestamp', value);

  String get device => getField<String>('device')!;
  set device(String value) => setField<String>('device', value);

  int? get totalBytes => getField<int>('total_bytes');
  set totalBytes(int? value) => setField<int>('total_bytes', value);

  int? get usedBytes => getField<int>('used_bytes');
  set usedBytes(int? value) => setField<int>('used_bytes', value);

  int? get freeBytes => getField<int>('free_bytes');
  set freeBytes(int? value) => setField<int>('free_bytes', value);

  double? get percentUsed => getField<double>('percent_used');
  set percentUsed(double? value) => setField<double>('percent_used', value);

  String? get fstype => getField<String>('fstype');
  set fstype(String? value) => setField<String>('fstype', value);
}
