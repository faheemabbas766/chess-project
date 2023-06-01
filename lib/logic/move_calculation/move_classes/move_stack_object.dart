import '../../chess_piece.dart';
import 'move.dart';

class MoveStackObject {
  Move move;
  ChessPiece movedPiece;
  ChessPiece takenPiece;
  ChessPiece FiMiTigerPiece;
  bool castled = false;
  bool promotion = false;
  ChessPieceType promotionType;
  bool fimiTiger = false;
  List<List<Move>> possibleOpenings;

  MoveStackObject(this.move, this.movedPiece, this.takenPiece,
      this.FiMiTigerPiece, this.possibleOpenings);
}
