import 'package:app_haikyuu/src/layers/domain/entities/player.dart';
import 'package:app_haikyuu/src/layers/domain/repository/home_repository_imp.dart';
import 'package:flutter/material.dart';

class HobbieImageWidget extends StatelessWidget {
  String playerName;
  int numberHobbie;
  HobbieImageWidget(
      {super.key, required this.playerName, required this.numberHobbie});
  PlayerRepositoryImp playersRepositoryImp = PlayerRepositoryImp();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: Image.network(
        width: 80,
        height: 100,
        playersRepositoryImp.urlImageHobbies(playerName, numberHobbie),
      ),
    );
  }
}
