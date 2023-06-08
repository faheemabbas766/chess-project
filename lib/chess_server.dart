// import 'dart:io';
//
// class ChessServer {
//   ServerSocket server;
//   List<Socket> clients = [];
//
//   void startServer() async {
//     server = await ServerSocket.bind(InternetAddress.anyIPv4, 9000);
//     print('Server started on port 9000');
//
//     server.listen((clientSocket) {
//       print('Client connected: ${clientSocket.remoteAddress.address}:${clientSocket.remotePort}');
//       clients.add(clientSocket);
//
//       // Handle client logic here
//       // You'll need to implement the specific logic for your chess game
//     });
//   }
//
//   void stopServer() {
//     server?.close();
//     for (var client in clients) {
//       client.close();
//     }
//     clients.clear();
//     print('Server stopped');
//   }
// }
