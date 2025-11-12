import '../database.dart';

class ClientsSiteTable extends SupabaseTable<ClientsSiteRow> {
  @override
  String get tableName => 'clients_site';

  @override
  ClientsSiteRow createRow(Map<String, dynamic> data) => ClientsSiteRow(data);
}

class ClientsSiteRow extends SupabaseDataRow {
  ClientsSiteRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ClientsSiteTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  int? get clientId => getField<int>('client_id');
  set clientId(int? value) => setField<int>('client_id', value);

  int? get serverPolicyId => getField<int>('server_policy_id');
  set serverPolicyId(int? value) => setField<int>('server_policy_id', value);

  int? get workstationPolicyId => getField<int>('workstation_policy_id');
  set workstationPolicyId(int? value) =>
      setField<int>('workstation_policy_id', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);

  DateTime? get createdTime => getField<DateTime>('created_time');
  set createdTime(DateTime? value) => setField<DateTime>('created_time', value);

  String? get modifiedBy => getField<String>('modified_by');
  set modifiedBy(String? value) => setField<String>('modified_by', value);

  DateTime? get modifiedTime => getField<DateTime>('modified_time');
  set modifiedTime(DateTime? value) =>
      setField<DateTime>('modified_time', value);

  int? get alertTemplateId => getField<int>('alert_template_id');
  set alertTemplateId(int? value) => setField<int>('alert_template_id', value);

  bool? get blockPolicyInheritance =>
      getField<bool>('block_policy_inheritance');
  set blockPolicyInheritance(bool? value) =>
      setField<bool>('block_policy_inheritance', value);

  dynamic? get failingChecks => getField<dynamic>('failing_checks');
  set failingChecks(dynamic? value) =>
      setField<dynamic>('failing_checks', value);
}
