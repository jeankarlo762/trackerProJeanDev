import '../database.dart';

class TicketsComStatusTable extends SupabaseTable<TicketsComStatusRow> {
  @override
  String get tableName => 'tickets_com_status';

  @override
  TicketsComStatusRow createRow(Map<String, dynamic> data) =>
      TicketsComStatusRow(data);
}

class TicketsComStatusRow extends SupabaseDataRow {
  TicketsComStatusRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TicketsComStatusTable();

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get hostname => getField<String>('hostname');
  set hostname(String? value) => setField<String>('hostname', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get requesterTelefone => getField<String>('requester_telefone');
  set requesterTelefone(String? value) =>
      setField<String>('requester_telefone', value);

  int? get ticketId => getField<int>('ticket_id');
  set ticketId(int? value) => setField<int>('ticket_id', value);

  String? get requesterNome => getField<String>('requester_nome');
  set requesterNome(String? value) => setField<String>('requester_nome', value);

  String? get nomeColab => getField<String>('nome_colab');
  set nomeColab(String? value) => setField<String>('nome_colab', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get statusId => getField<int>('status_id');
  set statusId(int? value) => setField<int>('status_id', value);

  String? get statusNome => getField<String>('status_nome');
  set statusNome(String? value) => setField<String>('status_nome', value);

  String? get plat => getField<String>('plat');
  set plat(String? value) => setField<String>('plat', value);

  String? get deviceType => getField<String>('device_type');
  set deviceType(String? value) => setField<String>('device_type', value);
}
