import 'package:fimi_tiger/model/app_model.dart';
import 'package:fimi_tiger/views/components/shared/rounded_button.dart';
import 'package:flutter/cupertino.dart';
import '../../chess_view.dart';
class MainMenuButtons extends StatelessWidget {
  final AppModel appModel;

  MainMenuButtons(this.appModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          RoundedButton(
            'Start',
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) {
                    appModel.newGame(context, notify: false);
                    return ChessView(appModel);
                  },
                ),
              );
            },
          ),
          Text("Want to Play Online?  Click Here..."),
          RoundedButton(
            'Play Online',
            onPressed: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) {
                    appModel.newGame(context, notify: false);
                    return ChessView(appModel);
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
