import 'package:app_haikyuu/src/layers/domain/entities/player.dart';
import 'package:app_haikyuu/src/layers/widgets/custom_avatar_widget.dart';
import 'package:flutter/material.dart';

import '../../domain/repository/home_repository_imp.dart';
import '../themes/theme.dart';

class ButtonStyleOutlined extends StatelessWidget {
  final Player player;
  ButtonStyleOutlined({super.key, required this.player});

  PlayerRepositoryImp playersRepositoryImp = PlayerRepositoryImp();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 5, right: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 360,
              height: 150,
              decoration: BoxDecoration(
                  color: themeCardButton.primaryColor,
                  borderRadius: BorderRadius.circular(20)),
              child: CustomAvatarWidget(
                player: player,
                image: playersRepositoryImp.urlImageSetting(player.name),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
