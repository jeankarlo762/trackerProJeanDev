import '../database.dart';

class TicketHistoryTable extends SupabaseTable<TicketHistoryRow> {
  @override
  String get tableName => 'ticket_history';

  @override
  TicketHistoryRow createRow(Map<String, dynamic> data) =>
      TicketHistoryRow(data);
}

class TicketHistoryRow extends SupabaseDataRow {
  TicketHistoryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TicketHistoryTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  int get ticketId => getField<int>('ticket_id')!;
  set ticketId(int value) => setField<int>('ticket_id', value);

  String? get changedBy => getField<String>('changed_by');
  set changedBy(String? value) => setField<String>('changed_by', value);

  String get fieldName => getField<String>('field_name')!;
  set fieldName(String value) => setField<String>('field_name', value);

  String? get oldValue => getField<String>('old_value');
  set oldValue(String? value) => setField<String>('old_value', value);

  String? get newValue => getField<String>('new_value');
  set newValue(String? value) => setField<String>('new_value', value);

  DateTime get changedAt => getField<DateTime>('changed_at')!;
  set changedAt(DateTime value) => setField<DateTime>('changed_at', value);
}
