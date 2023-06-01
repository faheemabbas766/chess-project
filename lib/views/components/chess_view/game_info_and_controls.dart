import 'package:fimi_tiger/model/app_model.dart';
import 'package:flutter/cupertino.dart';
import 'game_info_and_controls/restart_exit_buttons.dart';

class GameInfoAndControls extends StatelessWidget {
  final AppModel appModel;
  final ScrollController scrollController = ScrollController();

  GameInfoAndControls(this.appModel);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToBottom());
    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height > 600 ? 204 : 134,
      ),
      child: ListView(
        controller: scrollController,
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: [
          RestartExitButtons(appModel),
        ],
      ),
    );
  }

  void _scrollToBottom() {
    scrollController.jumpTo(scrollController.position.maxScrollExtent);
  }
}
