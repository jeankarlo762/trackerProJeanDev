import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _tiposEquipamentos = prefs
              .getStringList('ff_tiposEquipamentos')
              ?.map((x) {
                try {
                  return TipoEquipamentosStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _tiposEquipamentos;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  UserProfileStruct _userprofile =
      UserProfileStruct.fromSerializableMap(jsonDecode('{}'));
  UserProfileStruct get userprofile => _userprofile;
  set userprofile(UserProfileStruct value) {
    _userprofile = value;
  }

  void updateUserprofileStruct(Function(UserProfileStruct) updateFn) {
    updateFn(_userprofile);
  }

  ClientStruct _client = ClientStruct();
  ClientStruct get client => _client;
  set client(ClientStruct value) {
    _client = value;
  }

  void updateClientStruct(Function(ClientStruct) updateFn) {
    updateFn(_client);
  }

  List<TipoEquipamentosStruct> _tiposEquipamentos = [
    TipoEquipamentosStruct.fromSerializableMap(
        jsonDecode('{\"ordem\":\"0\",\"descricao\":\"Notebook\"}')),
    TipoEquipamentosStruct.fromSerializableMap(
        jsonDecode('{\"ordem\":\"1\",\"descricao\":\"Desktop\"}')),
    TipoEquipamentosStruct.fromSerializableMap(
        jsonDecode('{\"ordem\":\"2\",\"descricao\":\"Mobile\"}')),
    TipoEquipamentosStruct.fromSerializableMap(
        jsonDecode('{\"ordem\":\"3\",\"descricao\":\"Impressora\"}')),
    TipoEquipamentosStruct.fromSerializableMap(
        jsonDecode('{\"ordem\":\"4\",\"descricao\":\"Servidor\"}'))
  ];
  List<TipoEquipamentosStruct> get tiposEquipamentos => _tiposEquipamentos;
  set tiposEquipamentos(List<TipoEquipamentosStruct> value) {
    _tiposEquipamentos = value;
    prefs.setStringList(
        'ff_tiposEquipamentos', value.map((x) => x.serialize()).toList());
  }

  void addToTiposEquipamentos(TipoEquipamentosStruct value) {
    tiposEquipamentos.add(value);
    prefs.setStringList('ff_tiposEquipamentos',
        _tiposEquipamentos.map((x) => x.serialize()).toList());
  }

  void removeFromTiposEquipamentos(TipoEquipamentosStruct value) {
    tiposEquipamentos.remove(value);
    prefs.setStringList('ff_tiposEquipamentos',
        _tiposEquipamentos.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromTiposEquipamentos(int index) {
    tiposEquipamentos.removeAt(index);
    prefs.setStringList('ff_tiposEquipamentos',
        _tiposEquipamentos.map((x) => x.serialize()).toList());
  }

  void updateTiposEquipamentosAtIndex(
    int index,
    TipoEquipamentosStruct Function(TipoEquipamentosStruct) updateFn,
  ) {
    tiposEquipamentos[index] = updateFn(_tiposEquipamentos[index]);
    prefs.setStringList('ff_tiposEquipamentos',
        _tiposEquipamentos.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInTiposEquipamentos(
      int index, TipoEquipamentosStruct value) {
    tiposEquipamentos.insert(index, value);
    prefs.setStringList('ff_tiposEquipamentos',
        _tiposEquipamentos.map((x) => x.serialize()).toList());
  }

  bool _NavBarCompactView = true;
  bool get NavBarCompactView => _NavBarCompactView;
  set NavBarCompactView(bool value) {
    _NavBarCompactView = value;
  }

  int _currentTicketNumber = 0;
  int get currentTicketNumber => _currentTicketNumber;
  set currentTicketNumber(int value) {
    _currentTicketNumber = value;
  }

  List<String> _listEquipment = [];
  List<String> get listEquipment => _listEquipment;
  set listEquipment(List<String> value) {
    _listEquipment = value;
  }

  void addToListEquipment(String value) {
    listEquipment.add(value);
  }

  void removeFromListEquipment(String value) {
    listEquipment.remove(value);
  }

  void removeAtIndexFromListEquipment(int index) {
    listEquipment.removeAt(index);
  }

  void updateListEquipmentAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    listEquipment[index] = updateFn(_listEquipment[index]);
  }

  void insertAtIndexInListEquipment(int index, String value) {
    listEquipment.insert(index, value);
  }

  bool _ListView = false;
  bool get ListView => _ListView;
  set ListView(bool value) {
    _ListView = value;
  }

  String _AgentEncontrado = '';
  String get AgentEncontrado => _AgentEncontrado;
  set AgentEncontrado(String value) {
    _AgentEncontrado = value;
  }

  int _colaboradorIdSelecionado = 0;
  int get colaboradorIdSelecionado => _colaboradorIdSelecionado;
  set colaboradorIdSelecionado(int value) {
    _colaboradorIdSelecionado = value;
  }

  bool _isAscending = true;
  bool get isAscending => _isAscending;
  set isAscending(bool value) {
    _isAscending = value;
  }

  String _hostnameEdit = '';
  String get hostnameEdit => _hostnameEdit;
  set hostnameEdit(String value) {
    _hostnameEdit = value;
  }

  String _nomeColabEdit = '';
  String get nomeColabEdit => _nomeColabEdit;
  set nomeColabEdit(String value) {
    _nomeColabEdit = value;
  }

  String _solicitanteEdit = '';
  String get solicitanteEdit => _solicitanteEdit;
  set solicitanteEdit(String value) {
    _solicitanteEdit = value;
  }

  String _telefoneColabEdit = '';
  String get telefoneColabEdit => _telefoneColabEdit;
  set telefoneColabEdit(String value) {
    _telefoneColabEdit = value;
  }

  String _descricaoEdit = '';
  String get descricaoEdit => _descricaoEdit;
  set descricaoEdit(String value) {
    _descricaoEdit = value;
  }

  bool _campoDiferente = false;
  bool get campoDiferente => _campoDiferente;
  set campoDiferente(bool value) {
    _campoDiferente = value;
  }

  String _statusTicket = '';
  String get statusTicket => _statusTicket;
  set statusTicket(String value) {
    _statusTicket = value;
  }

  bool _ViewComentario = true;
  bool get ViewComentario => _ViewComentario;
  set ViewComentario(bool value) {
    _ViewComentario = value;
  }

  bool _ViewHistorico = false;
  bool get ViewHistorico => _ViewHistorico;
  set ViewHistorico(bool value) {
    _ViewHistorico = value;
  }

  String _statusSelect = '';
  String get statusSelect => _statusSelect;
  set statusSelect(String value) {
    _statusSelect = value;
  }

  int _numColGeral = 8;
  int get numColGeral => _numColGeral;
  set numColGeral(int value) {
    _numColGeral = value;
  }

  int _numColMobile = 0;
  int get numColMobile => _numColMobile;
  set numColMobile(int value) {
    _numColMobile = value;
  }

  String _filtroCard = '';
  String get filtroCard => _filtroCard;
  set filtroCard(String value) {
    _filtroCard = value;
  }

  bool _viewListaInvetario = true;
  bool get viewListaInvetario => _viewListaInvetario;
  set viewListaInvetario(bool value) {
    _viewListaInvetario = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
