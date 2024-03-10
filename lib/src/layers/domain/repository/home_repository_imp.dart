import 'dart:math';
import 'package:app_haikyuu/src/layers/domain/repository/player_repository.dart';
import 'package:app_haikyuu/src/layers/domain/entities/player.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase/src/supabase_stream_builder.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../shared/constants/api_setting.dart';

class PlayerRepositoryImp implements PlayerRepository {
  String uri = ApiSettings.url;
  final client = SupabaseClient(ApiSettings.url, ApiSettings.anonKey);

  // static final playersStream =
  //     Supabase.instance.client.from('players').stream(primaryKey: ['id']);

  @override
  SupabaseStreamBuilder getListPlayer() {
    final supabase = Supabase.instance.client;
    return supabase.from('players').stream(primaryKey: ['id']);
  }

  String urlImageSetting(String playerName) {
    final pName = playerName.toLowerCase();
    final String urlImg =
        'https://ddavmzymiwdqqiepnobi.supabase.co/storage/v1/object/public/imgHaikyuu/${pName}.png';
    return urlImg;
  }

  String urlImageHobbies(String playerName, int number) {
    final pName = playerName.toLowerCase();
    final String urlImg =
        'https://ddavmzymiwdqqiepnobi.supabase.co/storage/v1/object/public/hobbies/${pName}${number}.png';
    return urlImg;
  }

  @override
  SupabaseStreamBuilder getListTeams() {
    final supabase = Supabase.instance.client;
    return supabase.from('teams').stream(primaryKey: ['id']);
  }

  List<Player> converterListaParaJogadores(
      List<Map<String, dynamic>> listaDeMapas) {
    return listaDeMapas.map((map) => Player.fromMap(map)).toList();
  }
}
