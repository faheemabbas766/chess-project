import 'package:fimi_tiger/model/app_model.dart';
import 'package:fimi_tiger/views/components/main_menu_view/game_options/side_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class GameStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppModel>(
      builder: (context, appModel, child) => Row(
        children: [
          Text(_getStatus(appModel)),
          !appModel.gameOver && appModel.playerCount == 1 && appModel.isAIsTurn
              ? CupertinoActivityIndicator(radius: 12)
              : Container()
        ],
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
    );
  }

  String _getStatus(AppModel appModel) {
    if (!appModel.gameOver) {
      if (appModel.turn == Player.player1) {
        return 'White\'s turn';
      } else {
        return 'Brown\'s turn';
      }
    } else {
      if (appModel.stalemate) {
        return 'Stalemate';
      } else {
        if (appModel.playerCount == 1) {
          if (appModel.isAIsTurn) {
            return 'You Win!';
          } else {
            return 'You Lose :(';
          }
        } else {
          if (appModel.turn == Player.player1) {
            return 'Black wins!';
          } else {
            return 'White wins!';
          }
        }
      }
    }
  }
}