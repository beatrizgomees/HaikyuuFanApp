import 'package:supabase/src/supabase_stream_builder.dart';

abstract class PlayerRepository {
  SupabaseStreamBuilder getListPlayer();
  SupabaseStreamBuilder getListTeams();
}
