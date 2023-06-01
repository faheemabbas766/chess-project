import 'package:fimi_tiger/model/app_model.dart';
import 'package:flame/game.dart';
import 'package:flutter/cupertino.dart';

class ChessBoardWidget extends StatelessWidget {
  final AppModel appModel;

  ChessBoardWidget(this.appModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: appModel.theme.background),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width-69,
      child: ClipRRect(
        child: GameWidget(game: appModel.game),
      ),
    );
  }
}
