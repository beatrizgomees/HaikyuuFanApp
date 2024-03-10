import 'package:app_haikyuu/main.dart';
import 'package:app_haikyuu/src/layers/domain/entities/player.dart';
import 'package:app_haikyuu/src/layers/widgets/custom_text_container.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CustomAvatarWidget extends StatelessWidget {
  final String image;
  final Player player;

  const CustomAvatarWidget({
    super.key,
    required this.image,
    required this.player,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.network(
              image,
              width: 100,
              height: 200,
              fit: BoxFit.contain,
            ),
          ),
          CustomContentsTextContainer(
            player: player,
          )
        ],
      ),
    );
  }
}
