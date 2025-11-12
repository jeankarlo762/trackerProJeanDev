import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

String interpretarErro(String erro) {
  if (erro.contains('duplicate key value') && erro.contains('email')) {
    return 'Este e-mail já está cadastrado.';
  }

  if (erro.contains('duplicate key value')) {
    return 'Já existe um registro com esse dado.';
  }

  if (erro.contains('SocketException')) {
    return 'Sem conexão com a internet.';
  }

  if (erro.contains('TimeoutException')) {
    return 'A operação demorou demais e foi cancelada.';
  }

  return erro;
}

List<dynamic> sortMySoftwares(
  List<dynamic> listToSort,
  int sortColumnIndex,
  bool isAsc,
) {
  // Etapa 1: Desempacotar a lista se for uma lista dentro de lista
  dynamic resolvedList = listToSort;

  if (resolvedList.length == 1 && resolvedList.first is List) {
    resolvedList = resolvedList.first;
  }

  // Etapa 2: Converter todos os elementos para Map<String, dynamic>
  final newList = (resolvedList as List).map<Map<String, dynamic>>((e) {
    if (e is Map<String, dynamic>) return e;
    if (e is Map<String, String>) return Map<String, dynamic>.from(e);
    if (e is String) return jsonDecode(e) as Map<String, dynamic>;
    throw Exception('Elemento da lista não é um Map ou JSON válido: $e');
  }).toList();

  // Etapa 3: Mapeamento de colunas
  const columnMap = {
    0: {'key': 'name', 'type': 'string'},
    2: {'key': 'size', 'type': 'number'},
    3: {'key': 'install_date', 'type': 'date'},
  };

  final sortKey = columnMap[sortColumnIndex]?['key'];
  final sortType = columnMap[sortColumnIndex]?['type'];

  if (sortKey == null || sortType == null) return listToSort;

  int safeCompare(dynamic a, dynamic b) {
    if (a == null && b == null) return 0;
    if (a == null) return -1;
    if (b == null) return 1;
    return a.compareTo(b);
  }

  switch (sortType) {
    case 'string':
      newList.sort((a, b) => safeCompare(
          (a[sortKey] ?? '').toString(), (b[sortKey] ?? '').toString()));
      break;

    case 'number':
      newList.sort((a, b) => safeCompare(parseSize(a[sortKey]?.toString()),
          parseSize(b[sortKey]?.toString())));

      break;

    case 'date':
      DateTime parseDate(String? input) {
        try {
          return DateTime.parse(input ?? '');
        } catch (_) {
          try {
            final parts =
                input?.split('-').map((e) => int.tryParse(e) ?? 1).toList();
            return DateTime(parts![0], parts[1], parts[2]);
          } catch (_) {
            return DateTime(1900);
          }
        }
      }

      newList.sort(
          (a, b) => safeCompare(parseDate(a[sortKey]), parseDate(b[sortKey])));
      break;
  }

  if (!isAsc) {
    return newList.reversed.toList();
  }

  return newList;
}

double parseSize(String? input) {
  if (input == null) return 0.0;

  final match =
      RegExp(r'([\d.]+)\s*([KMGTP]?B)', caseSensitive: false).firstMatch(input);

  if (match == null) return 0.0;

  final value = double.tryParse(match.group(1)!) ?? 0.0;
  final unit = match.group(2)!.toUpperCase();

  // Fator de conversão para MB
  switch (unit) {
    case 'KB':
      return value / 1024;
    case 'MB':
      return value;
    case 'GB':
      return value * 1024;
    case 'TB':
      return value * 1024 * 1024;
    default:
      return value; // fallback
  }
}
