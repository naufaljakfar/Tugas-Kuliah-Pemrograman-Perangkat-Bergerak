import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(TicTacToe());

class TicTacToe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Tic Tac Toe',
          style: GoogleFonts.poppins(
              textStyle:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        ),
      ),
      body: Game(),
      backgroundColor: Colors.white,
    );
  }
}

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  List<List<String>> _board = [
    ['', '', ''],
    ['', '', ''],
    ['', '', ''],
  ];

  String _turn = 'X';
  String _winner = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.all(16.0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.0,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            itemCount: 9,
            itemBuilder: (context, index) {
              int row = index ~/ 3;
              int col = index % 3;

              return GestureDetector(
                onTap: () {
                  setState(() {
                    if (_board[row][col] == '' && _winner == '') {
                      _board[row][col] = _turn;
                      _turn = _turn == 'X' ? 'O' : 'X';
                      _checkWinner();
                    }
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    border: Border.all(
                      color: Colors.black,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Center(
                    child: Text(
                      _board[row][col],
                      style: TextStyle(
                        fontSize: 50.0,
                        color:
                            _board[row][col] == 'X' ? Colors.red : Colors.green,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Text(
          _winner == '' ? 'Turn: $_turn' : 'Winner: $_winner',
          style: TextStyle(
            fontSize: 20.0,
            color: _winner == '' ? null : Colors.red,
          ),
        ),
      ],
    );
  }

  void _checkWinner() {
    for (int i = 0; i < 3; i++) {
      if (_board[i][0] == _board[i][1] &&
          _board[i][0] == _board[i][2] &&
          _board[i][0] != '') {
        _winner = _board[i][0];
        break;
      }
      if (_board[0][i] == _board[1][i] &&
          _board[0][i] == _board[2][i] &&
          _board[0][i] != '') {
        _winner = _board[0][i];
        break;
      }
    }
    if (_board[0][0] == _board[1][1] &&
        _board[0][0] == _board[2][2] &&
        _board[0][0] != '') {
      _winner = _board[0][0];
    }
    if (_board[0][2] == _board[1][1] &&
        _board[0][2] == _board[2][0] &&
        _board[0][2] != '') {
      _winner = _board[0][2];
    }
  }
}
