import '../database.dart';

class AgentsAgentTable extends SupabaseTable<AgentsAgentRow> {
  @override
  String get tableName => 'agents_agent';

  @override
  AgentsAgentRow createRow(Map<String, dynamic> data) => AgentsAgentRow(data);
}

class AgentsAgentRow extends SupabaseDataRow {
  AgentsAgentRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AgentsAgentTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get version => getField<String>('version');
  set version(String? value) => setField<String>('version', value);

  String? get operatingSystem => getField<String>('operating_system');
  set operatingSystem(String? value) =>
      setField<String>('operating_system', value);

  String? get plat => getField<String>('plat');
  set plat(String? value) => setField<String>('plat', value);

  String? get hostname => getField<String>('hostname');
  set hostname(String? value) => setField<String>('hostname', value);

  String? get agentId => getField<String>('agent_id');
  set agentId(String? value) => setField<String>('agent_id', value);

  DateTime? get lastSeen => getField<DateTime>('last_seen');
  set lastSeen(DateTime? value) => setField<DateTime>('last_seen', value);

  dynamic? get services => getField<dynamic>('services');
  set services(dynamic? value) => setField<dynamic>('services', value);

  String? get publicIp => getField<String>('public_ip');
  set publicIp(String? value) => setField<String>('public_ip', value);

  int? get totalRam => getField<int>('total_ram');
  set totalRam(int? value) => setField<int>('total_ram', value);

  dynamic? get disks => getField<dynamic>('disks');
  set disks(dynamic? value) => setField<dynamic>('disks', value);

  DateTime? get bootTime => getField<DateTime>('boot_time');
  set bootTime(DateTime? value) => setField<DateTime>('boot_time', value);

  String? get loggedInUsername => getField<String>('logged_in_username');
  set loggedInUsername(String? value) =>
      setField<String>('logged_in_username', value);

  String? get monitoringType => getField<String>('monitoring_type');
  set monitoringType(String? value) =>
      setField<String>('monitoring_type', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get meshNodeId => getField<String>('mesh_node_id');
  set meshNodeId(String? value) => setField<String>('mesh_node_id', value);

  bool? get overdueEmailAlert => getField<bool>('overdue_email_alert');
  set overdueEmailAlert(bool? value) =>
      setField<bool>('overdue_email_alert', value);

  bool? get overdueTextAlert => getField<bool>('overdue_text_alert');
  set overdueTextAlert(bool? value) =>
      setField<bool>('overdue_text_alert', value);

  int? get overdueTime => getField<int>('overdue_time');
  set overdueTime(int? value) => setField<int>('overdue_time', value);

  int? get checkInterval => getField<int>('check_interval');
  set checkInterval(int? value) => setField<int>('check_interval', value);

  bool? get needsReboot => getField<bool>('needs_reboot');
  set needsReboot(bool? value) => setField<bool>('needs_reboot', value);

  bool? get chocoInstalled => getField<bool>('choco_installed');
  set chocoInstalled(bool? value) => setField<bool>('choco_installed', value);

  dynamic? get wmiDetail => getField<dynamic>('wmi_detail');
  set wmiDetail(dynamic? value) => setField<dynamic>('wmi_detail', value);

  String? get goarch => getField<String>('goarch');
  set goarch(String? value) => setField<String>('goarch', value);

  DateTime? get patchesLastInstalled =>
      getField<DateTime>('patches_last_installed');
  set patchesLastInstalled(DateTime? value) =>
      setField<DateTime>('patches_last_installed', value);

  String? get createdBy => getField<String>('created_by');
  set createdBy(String? value) => setField<String>('created_by', value);

  DateTime? get createdTime => getField<DateTime>('created_time');
  set createdTime(DateTime? value) => setField<DateTime>('created_time', value);

  String? get modifiedBy => getField<String>('modified_by');
  set modifiedBy(String? value) => setField<String>('modified_by', value);

  DateTime? get modifiedTime => getField<DateTime>('modified_time');
  set modifiedTime(DateTime? value) =>
      setField<DateTime>('modified_time', value);

  String? get lastLoggedInUser => getField<String>('last_logged_in_user');
  set lastLoggedInUser(String? value) =>
      setField<String>('last_logged_in_user', value);

  bool? get maintenanceMode => getField<bool>('maintenance_mode');
  set maintenanceMode(bool? value) => setField<bool>('maintenance_mode', value);

  int? get siteId => getField<int>('site_id');
  set siteId(int? value) => setField<int>('site_id', value);

  bool? get overdueDashboardAlert => getField<bool>('overdue_dashboard_alert');
  set overdueDashboardAlert(bool? value) =>
      setField<bool>('overdue_dashboard_alert', value);

  int? get offlineTime => getField<int>('offline_time');
  set offlineTime(int? value) => setField<int>('offline_time', value);

  int? get alertTemplateId => getField<int>('alert_template_id');
  set alertTemplateId(int? value) => setField<int>('alert_template_id', value);

  bool? get blockPolicyInheritance =>
      getField<bool>('block_policy_inheritance');
  set blockPolicyInheritance(bool? value) =>
      setField<bool>('block_policy_inheritance', value);

  int? get clientId => getField<int>('client_id');
  set clientId(int? value) => setField<int>('client_id', value);

  String? get deviceType => getField<String>('device_type');
  set deviceType(String? value) => setField<String>('device_type', value);

  String? get healthStatus => getField<String>('health_status');
  set healthStatus(String? value) => setField<String>('health_status', value);

  int? get collaboratorId => getField<int>('collaborator_id');
  set collaboratorId(int? value) => setField<int>('collaborator_id', value);

  dynamic? get locationGps => getField<dynamic>('location_gps');
  set locationGps(dynamic? value) => setField<dynamic>('location_gps', value);

  int? get status => getField<int>('status');
  set status(int? value) => setField<int>('status', value);
}
