import '../database.dart';

class ViewInventarioDispositivosTable
    extends SupabaseTable<ViewInventarioDispositivosRow> {
  @override
  String get tableName => 'view_inventario_dispositivos';

  @override
  ViewInventarioDispositivosRow createRow(Map<String, dynamic> data) =>
      ViewInventarioDispositivosRow(data);
}

class ViewInventarioDispositivosRow extends SupabaseDataRow {
  ViewInventarioDispositivosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewInventarioDispositivosTable();

  int? get agentId => getField<int>('agent_id');
  set agentId(int? value) => setField<int>('agent_id', value);

  String? get hostname => getField<String>('hostname');
  set hostname(String? value) => setField<String>('hostname', value);

  int? get status => getField<int>('status');
  set status(int? value) => setField<int>('status', value);

  String? get statusH => getField<String>('status_h');
  set statusH(String? value) => setField<String>('status_h', value);

  DateTime? get lastSeen => getField<DateTime>('last_seen');
  set lastSeen(DateTime? value) => setField<DateTime>('last_seen', value);

  String? get deviceType => getField<String>('device_type');
  set deviceType(String? value) => setField<String>('device_type', value);

  String? get plat => getField<String>('plat');
  set plat(String? value) => setField<String>('plat', value);

  int? get diasSemAtualizacao => getField<int>('dias_sem_atualizacao');
  set diasSemAtualizacao(int? value) =>
      setField<int>('dias_sem_atualizacao', value);

  int? get siteId => getField<int>('site_id');
  set siteId(int? value) => setField<int>('site_id', value);

  String? get siteName => getField<String>('site_name');
  set siteName(String? value) => setField<String>('site_name', value);

  int? get clientId => getField<int>('client_id');
  set clientId(int? value) => setField<int>('client_id', value);

  String? get clientName => getField<String>('client_name');
  set clientName(String? value) => setField<String>('client_name', value);

  int? get collaboratorId => getField<int>('collaborator_id');
  set collaboratorId(int? value) => setField<int>('collaborator_id', value);

  String? get collaboradorNome => getField<String>('collaborador_nome');
  set collaboradorNome(String? value) =>
      setField<String>('collaborador_nome', value);

  String? get manufacturer => getField<String>('manufacturer');
  set manufacturer(String? value) => setField<String>('manufacturer', value);

  int? get totalDispositivos => getField<int>('total_dispositivos');
  set totalDispositivos(int? value) =>
      setField<int>('total_dispositivos', value);

  int? get totalDeviceTypes => getField<int>('total_device_types');
  set totalDeviceTypes(int? value) =>
      setField<int>('total_device_types', value);

  int? get totalSistemas => getField<int>('total_sistemas');
  set totalSistemas(int? value) => setField<int>('total_sistemas', value);

  int? get totalFabricantes => getField<int>('total_fabricantes');
  set totalFabricantes(int? value) => setField<int>('total_fabricantes', value);
}
