import '../database.dart';

class VwAgentsWmiDetailTable extends SupabaseTable<VwAgentsWmiDetailRow> {
  @override
  String get tableName => 'vw_agents_wmi_detail';

  @override
  VwAgentsWmiDetailRow createRow(Map<String, dynamic> data) =>
      VwAgentsWmiDetailRow(data);
}

class VwAgentsWmiDetailRow extends SupabaseDataRow {
  VwAgentsWmiDetailRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VwAgentsWmiDetailTable();

  int? get agentId => getField<int>('agent_id');
  set agentId(int? value) => setField<int>('agent_id', value);

  String? get soCaption => getField<String>('so_caption');
  set soCaption(String? value) => setField<String>('so_caption', value);

  String? get soVersion => getField<String>('so_version');
  set soVersion(String? value) => setField<String>('so_version', value);

  String? get soInstallDate => getField<String>('so_install_date');
  set soInstallDate(String? value) =>
      setField<String>('so_install_date', value);

  String? get hostname => getField<String>('hostname');
  set hostname(String? value) => setField<String>('hostname', value);

  String? get soArchitecture => getField<String>('so_architecture');
  set soArchitecture(String? value) =>
      setField<String>('so_architecture', value);

  String? get soSerial => getField<String>('so_serial');
  set soSerial(String? value) => setField<String>('so_serial', value);

  String? get cpuName => getField<String>('cpu_name');
  set cpuName(String? value) => setField<String>('cpu_name', value);

  String? get cpuManufacturer => getField<String>('cpu_manufacturer');
  set cpuManufacturer(String? value) =>
      setField<String>('cpu_manufacturer', value);

  String? get cpuCores => getField<String>('cpu_cores');
  set cpuCores(String? value) => setField<String>('cpu_cores', value);

  String? get cpuThreads => getField<String>('cpu_threads');
  set cpuThreads(String? value) => setField<String>('cpu_threads', value);

  String? get memCapacityBytes => getField<String>('mem_capacity_bytes');
  set memCapacityBytes(String? value) =>
      setField<String>('mem_capacity_bytes', value);

  double? get memCapacityGb => getField<double>('mem_capacity_gb');
  set memCapacityGb(double? value) =>
      setField<double>('mem_capacity_gb', value);

  String? get memSpeedMhz => getField<String>('mem_speed_mhz');
  set memSpeedMhz(String? value) => setField<String>('mem_speed_mhz', value);

  String? get diskModel => getField<String>('disk_model');
  set diskModel(String? value) => setField<String>('disk_model', value);

  double? get diskSizeGb => getField<double>('disk_size_gb');
  set diskSizeGb(double? value) => setField<double>('disk_size_gb', value);

  String? get motherboardManufacturer =>
      getField<String>('motherboard_manufacturer');
  set motherboardManufacturer(String? value) =>
      setField<String>('motherboard_manufacturer', value);

  String? get motherboardModel => getField<String>('motherboard_model');
  set motherboardModel(String? value) =>
      setField<String>('motherboard_model', value);

  String? get netName => getField<String>('net_name');
  set netName(String? value) => setField<String>('net_name', value);

  String? get netMac => getField<String>('net_mac');
  set netMac(String? value) => setField<String>('net_mac', value);

  String? get netSpeed => getField<String>('net_speed');
  set netSpeed(String? value) => setField<String>('net_speed', value);

  String? get netConnection => getField<String>('net_connection');
  set netConnection(String? value) => setField<String>('net_connection', value);

  String? get monitorCaption => getField<String>('monitor_caption');
  set monitorCaption(String? value) =>
      setField<String>('monitor_caption', value);

  String? get monitorManufacturer => getField<String>('monitor_manufacturer');
  set monitorManufacturer(String? value) =>
      setField<String>('monitor_manufacturer', value);
}
