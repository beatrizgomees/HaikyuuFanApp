import 'package:app_haikyuu/src/layers/domain/entities/player.dart';
import 'package:app_haikyuu/src/layers/shared/widgets/custom_avatar_widget.dart';
import 'package:flutter/material.dart';

import '../../domain/repository/player_repository_imp.dart';
import '../themes/theme.dart';

class ButtonStyleOutlined extends StatefulWidget {
  final Player player;
  ButtonStyleOutlined({super.key, required this.player});

  @override
  State<ButtonStyleOutlined> createState() => _ButtonStyleOutlinedState();
}

class _ButtonStyleOutlinedState extends State<ButtonStyleOutlined> {
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
                player: widget.player,
                image: playersRepositoryImp.urlImageSetting(widget.player.name),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
