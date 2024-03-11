import 'package:app_haikyuu/src/layers/domain/entities/player.dart';
import 'package:app_haikyuu/src/layers/domain/repository/player_repository_imp.dart';
import 'package:app_haikyuu/src/layers/shared/design/buttonStyleOutiled.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListUsersPage extends StatefulWidget {
  ListUsersPage({super.key});

  @override
  State<ListUsersPage> createState() => _ListUsersPageState();
}

class _ListUsersPageState extends State<ListUsersPage> {
  late PlayerRepositoryImp playerRepositoryImp;

  @override
  Widget build(BuildContext context) {
    playerRepositoryImp = context.watch<PlayerRepositoryImp>();
    return Scaffold(
      body: StreamBuilder<List<Map<String, dynamic>>>(
          stream: playerRepositoryImp.getListPlayer(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }
            final players = snapshot.data!;
            print(players);
            return Center(
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: players.length,
                itemBuilder: (context, index) => ButtonStyleOutlined(
                  player: Player.fromMap(players[index]),
                ),
              ),
            );
          }),
    );
  }
}
