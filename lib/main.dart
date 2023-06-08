import 'dart:io';
import 'package:fimi_tiger/model/app_model.dart';
import 'package:fimi_tiger/views/main_menu_view.dart';
import 'package:flame/flame.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'logic/shared_functions.dart';

void startServer() async {
  final server = await ServerSocket.bind(InternetAddress.anyIPv4, 9000);
  print('Server started on port 9000');

  server.listen((clientSocket) {
    print('Client connected: ${clientSocket.remoteAddress.address}:${clientSocket.remotePort}');

    // Handle client logic here
    // You'll need to implement the specific logic for your chess game
  });
}

void main() {
  startServer();
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppModel(),
      child: FiMiTigerApp(),
    ),
  );
  _loadFlameAssets();
}

void _loadFlameAssets() async {
  List<String> pieceImages = [];
  for (var theme in PIECE_THEMES) {
    for (var color in ['black', 'white']) {
      for (var piece in ['king', 'queen', 'rook', 'bishop', 'knight', 'pawn']) {
        pieceImages
            .add('pieces/${formatPieceTheme(theme)}/${piece}_$color.png');
      }
    }
  }
  await Flame.images.loadAll(pieceImages);
}

class FiMiTigerApp extends StatelessWidget {
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return CupertinoApp(
      title: 'Chess Game',
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
        textTheme: CupertinoTextThemeData(
          textStyle: TextStyle(fontFamily: 'Jura', fontSize: 20),
          pickerTextStyle: TextStyle(fontFamily: 'Jura'),
        ),
      ),
      home: MainMenuView(),
    );
  }
}
