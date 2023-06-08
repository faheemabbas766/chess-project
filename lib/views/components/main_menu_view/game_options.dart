import 'package:fimi_tiger/model/app_model.dart';
import 'package:flutter/cupertino.dart';

class GameOptions extends StatelessWidget {
  final AppModel appModel;

  GameOptions(this.appModel);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.zero,
        physics: ClampingScrollPhysics(),
        children: [
          // GameModePicker(
          //   appModel.playerCount,
          //   appModel.setPlayerCount,
          // ),
          // SizedBox(height: 20),
      ],
      ),
    );
  }
}
