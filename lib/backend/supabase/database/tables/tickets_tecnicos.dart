import '../database.dart';

class TicketsTecnicosTable extends SupabaseTable<TicketsTecnicosRow> {
  @override
  String get tableName => 'tickets_tecnicos';

  @override
  TicketsTecnicosRow createRow(Map<String, dynamic> data) =>
      TicketsTecnicosRow(data);
}

class TicketsTecnicosRow extends SupabaseDataRow {
  TicketsTecnicosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TicketsTecnicosTable();

  int? get ticketId => getField<int>('ticket_id');
  set ticketId(int? value) => setField<int>('ticket_id', value);

  int? get tecnicoId => getField<int>('tecnico_id');
  set tecnicoId(int? value) => setField<int>('tecnico_id', value);

  String? get tecnicoNome => getField<String>('tecnico_nome');
  set tecnicoNome(String? value) => setField<String>('tecnico_nome', value);
}
