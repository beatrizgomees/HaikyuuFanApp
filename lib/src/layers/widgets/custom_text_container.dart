import 'package:app_haikyuu/src/layers/domain/entities/player.dart';
import 'package:app_haikyuu/src/layers/shared/themes/theme.dart';
import 'package:app_haikyuu/src/layers/widgets/custom_button_inside_of_card.dart';
import 'package:flutter/material.dart';

class CustomContentsTextContainer extends StatelessWidget {
  final Player player;
  const CustomContentsTextContainer({super.key, required this.player});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                    color: textDecoration.highlightColor,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          //Name
                          player.name,
                          style: textStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              TextButton(
                style: const ButtonStyle(),
                onPressed: null,
                child: Text(
                  player.position,
                  style: TextStyle(color: textDecoration.primaryColor),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 5, right: 10),
                    child: CustomButtonInsideOfCardWidget(
                      player: player,
                      text: "Details",
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
