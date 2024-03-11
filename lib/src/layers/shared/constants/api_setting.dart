import 'dart:io';

import 'package:app_haikyuu/main.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ApiSettings {
  static String url = 'https://ddavmzymiwdqqiepnobi.supabase.co';
  static String anonKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRkYXZtenltaXdkcXFpZXBub2JpIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODM0MDAzOTcsImV4cCI6MTk5ODk3NjM5N30.ISFtBlu5fiBo96Easnllf4pT_kiKjlFwOB9kurBVfLs';

  static String playerName = "";

  static String urlImageSetting(String playerName) {
    return 'https://ddavmzymiwdqqiepnobi.supabase.co/storage/v1/object/public/imgHaikyuu/${playerName.toLowerCase()}.png';
  }

  static String urlHobbiesImage(String playerName, int order) {
    return 'https://ddavmzymiwdqqiepnobi.supabase.co/storage/v1/object/public/hobbies/${playerName.toLowerCase()}${order}.png';
  }
}
