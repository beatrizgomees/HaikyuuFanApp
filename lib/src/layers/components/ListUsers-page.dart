import 'package:app_haikyuu/src/layers/domain/entities/player.dart';
import 'package:app_haikyuu/src/layers/domain/repository/home_repository_imp.dart';
import 'package:app_haikyuu/src/layers/shared/design/buttonStyleOutiled.dart';
import 'package:flutter/material.dart';

class ListUsersPage extends StatelessWidget {
  ListUsersPage({super.key});
  PlayerRepositoryImp playersRepositoryImp = PlayerRepositoryImp();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<List<Map<String, dynamic>>>(
          stream: playersRepositoryImp.getListPlayer(),
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
