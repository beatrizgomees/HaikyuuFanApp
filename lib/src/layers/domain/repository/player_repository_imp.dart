import 'dart:math';
import 'package:app_haikyuu/src/layers/domain/repository/player_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase/src/supabase_stream_builder.dart';

import '../../shared/constants/api_setting.dart';

class PlayerRepositoryImp extends ChangeNotifier implements PlayerRepository {
  String uri = ApiSettings.url;
  final client = SupabaseClient(ApiSettings.url, ApiSettings.anonKey);

  @override
  SupabaseStreamBuilder getListPlayer() {
    final supabase = Supabase.instance.client;
    var result = supabase.from('players').stream(primaryKey: ['id']);
    notifyListeners();
    return result;
  }

  String urlImageSetting(String playerName) {
    String name = ApiSettings.urlImageSetting(playerName);
    notifyListeners();
    return name;
  }

  String urlImageHobbies(String playerName, int order) {
    String hobbie = ApiSettings.urlHobbiesImage(playerName, order);
    notifyListeners();
    return hobbie;
  }

  @override
  SupabaseStreamBuilder getListTeams() {
    final supabase = Supabase.instance.client;
    return supabase.from('teams').stream(primaryKey: ['id']);
  }
}
