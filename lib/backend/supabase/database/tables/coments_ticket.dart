import '../database.dart';

class ComentsTicketTable extends SupabaseTable<ComentsTicketRow> {
  @override
  String get tableName => 'coments_ticket';

  @override
  ComentsTicketRow createRow(Map<String, dynamic> data) =>
      ComentsTicketRow(data);
}

class ComentsTicketRow extends SupabaseDataRow {
  ComentsTicketRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ComentsTicketTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get comentario => getField<String>('comentario');
  set comentario(String? value) => setField<String>('comentario', value);

  String? get autor => getField<String>('autor');
  set autor(String? value) => setField<String>('autor', value);

  int? get ticketId => getField<int>('ticket_id');
  set ticketId(int? value) => setField<int>('ticket_id', value);
}
