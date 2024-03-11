import 'package:app_haikyuu/src/layers/shared/widgets/hobbie_image_widget.dart';
import 'package:app_haikyuu/src/layers/shared/widgets/text_detail_player_widget.dart';
import 'package:app_haikyuu/src/layers/shared/themes/theme.dart';
import 'package:flutter/material.dart';

import '../domain/entities/player.dart';
import '../domain/repository/player_repository_imp.dart';

class DetailView extends StatefulWidget {
  DetailView({super.key, required this.player});
  final Player player;

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  PlayerRepositoryImp playersRepositoryImp = PlayerRepositoryImp();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Haikyuu App"),
        backgroundColor: lightTheme.primaryColor,
      ),
      backgroundColor: lightTheme.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                widget.player.name,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
            ),
            TextPlayerDetailWidget(text: widget.player.goal),
            TextPlayerDetailWidget(text: widget.player.phrase),
            Stack(
              alignment: Alignment.centerRight,
              children: [
                Container(
                  width: screenWidth,
                  color: lightTheme.primaryColor,
                ),
                SingleChildScrollView(
                  child: Container(
                    height: screenHeight / 1.1,
                    width: screenWidth,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 20),
                          child: Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(44, 48, 78, 1),
                            ),
                            child: Text(
                              widget.player.years.toString() + ' years ',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 20),
                          child: Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: widget.player.position ==
                                        "Central Blocker" ||
                                    widget.player.position == "Reserve Player"
                                ? 180
                                : 140,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(44, 48, 78, 1),
                            ),
                            child: Text(
                              widget.player.position,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 20),
                          child: Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(44, 48, 78, 1),
                            ),
                            child: Text(
                              widget.player.weight.toString() + 'kg',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 20),
                          child: Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(44, 48, 78, 1),
                            ),
                            child: Text(
                              widget.player.height.toString(),
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        HobbieImageWidget(
                            playerName: widget.player.name, numberHobbie: 1),
                        HobbieImageWidget(
                            playerName: widget.player.name, numberHobbie: 2),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0, top: 120),
                          child: Container(
                            height: 50,
                            width: 150,
                            child: Text(
                              textAlign: TextAlign.left,
                              widget.player.phrase,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 20),
                          child: Container(
                            height: 50,
                            width: 150,
                            child: Text(
                              textAlign: TextAlign.left,
                              widget.player.reputation,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Image.network(
                      width: 300,
                      height: screenHeight + 0.8,
                      playersRepositoryImp.urlImageSetting(widget.player.name),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
