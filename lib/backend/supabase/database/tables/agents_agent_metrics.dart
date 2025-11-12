import '../database.dart';

class AgentsAgentMetricsTable extends SupabaseTable<AgentsAgentMetricsRow> {
  @override
  String get tableName => 'agents_agent_metrics';

  @override
  AgentsAgentMetricsRow createRow(Map<String, dynamic> data) =>
      AgentsAgentMetricsRow(data);
}

class AgentsAgentMetricsRow extends SupabaseDataRow {
  AgentsAgentMetricsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AgentsAgentMetricsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get agentId => getField<int>('agent_id');
  set agentId(int? value) => setField<int>('agent_id', value);

  DateTime? get timestamp => getField<DateTime>('timestamp');
  set timestamp(DateTime? value) => setField<DateTime>('timestamp', value);

  double? get cpuLoad => getField<double>('cpu_load');
  set cpuLoad(double? value) => setField<double>('cpu_load', value);

  int? get memoryUsed => getField<int>('memory_used');
  set memoryUsed(int? value) => setField<int>('memory_used', value);

  int? get memoryTotal => getField<int>('memory_total');
  set memoryTotal(int? value) => setField<int>('memory_total', value);
}
