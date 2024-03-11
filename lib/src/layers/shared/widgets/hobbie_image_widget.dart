import 'package:app_haikyuu/src/layers/domain/entities/player.dart';
import 'package:app_haikyuu/src/layers/domain/repository/player_repository_imp.dart';
import 'package:flutter/material.dart';

class HobbieImageWidget extends StatefulWidget {
  String playerName;
  int numberHobbie;
  HobbieImageWidget(
      {super.key, required this.playerName, required this.numberHobbie});

  @override
  State<HobbieImageWidget> createState() => _HobbieImageWidgetState();
}

class _HobbieImageWidgetState extends State<HobbieImageWidget> {
  PlayerRepositoryImp playersRepositoryImp = PlayerRepositoryImp();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: Image.network(
        width: 80,
        height: 100,
        playersRepositoryImp.urlImageHobbies(
            widget.playerName, widget.numberHobbie),
      ),
    );
  }
}
