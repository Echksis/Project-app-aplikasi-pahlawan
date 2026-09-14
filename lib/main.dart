import 'package:flutter/material.dart';

void main() {
  runApp(const ScoreMatchApp());
}

// =====================================================
// APP
// =====================================================

class ScoreMatchApp extends StatelessWidget {
  const ScoreMatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Score Match',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0B0D10),
        useMaterial3: true,
      ),
      home: const SettingPage(),
    );
  }
}

// =====================================================
// SETTING PAGE
// =====================================================

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  final TextEditingController maxScoreController =
      TextEditingController(text: '21');

  // ===================================================
  // START GAME
  // ===================================================

  void startGame() {
    int? maxScore = int.tryParse(maxScoreController.text);

    if (maxScore == null || maxScore < 1) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Masukkan skor yang valid'),
        ),
      );
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ScorePage(
          maxScore: maxScore,
        ),
      ),
    );
  }

  @override
  void dispose() {
    maxScoreController.dispose();
    super.dispose();
  }

  // ===================================================
  // UI
  // ===================================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0D10),

      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(25),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                // LOGO / TITLE
                const Text(
                  'SCORE MATCH',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                  ),
                ),

                const SizedBox(height: 45),

                // SETTING CARD
                Container(
                  width: double.infinity,

                  padding: const EdgeInsets.all(24),

                  decoration: BoxDecoration(
                    color: const Color(0xFF15181D),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: const Color(0xFF292E35),
                    ),
                  ),

                  child: Column(
                    children: [
                      const Text(
                        'MAX SCORE',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),

                      const SizedBox(height: 15),

                      // INPUT MAX SCORE
                      TextField(
                        controller: maxScoreController,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,

                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),

                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFF0B0D10),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // START BUTTON
                      SizedBox(
                        width: double.infinity,
                        height: 52,

                        child: ElevatedButton(
                          onPressed: startGame,

                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFE5B84B),
                            foregroundColor: Colors.black,
                            elevation: 0,

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),

                          child: const Text(
                            'START',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// =====================================================
// SCORE PAGE
// =====================================================

class ScorePage extends StatefulWidget {
  final int maxScore;

  const ScorePage({
    super.key,
    required this.maxScore,
  });

  @override
  State<ScorePage> createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {
  int player1Score = 0;
  int player2Score = 0;

  bool gameFinished = false;

  // ===================================================
  // ADD POINT
  // ===================================================

  void addPoint(int player) {
    if (gameFinished) {
      return;
    }

    setState(() {
      if (player == 1) {
        player1Score++;
      } else {
        player2Score++;
      }

      // CHECK WINNER
      if (player1Score >= widget.maxScore ||
          player2Score >= widget.maxScore) {
        gameFinished = true;
      }
    });
  }

  // ===================================================
  // RESET GAME
  // ===================================================

  void resetGame() {
    setState(() {
      player1Score = 0;
      player2Score = 0;
      gameFinished = false;
    });
  }

  // ===================================================
  // GET WINNER
  // ===================================================

  String getWinner() {
    if (player1Score >= widget.maxScore) {
      return 'PLAYER 1';
    }

    return 'PLAYER 2';
  }

  // ===================================================
  // MAIN UI
  // ===================================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0D10),

      // =================================================
      // APP BAR
      // =================================================

      appBar: AppBar(
        backgroundColor: const Color(0xFF0B0D10),

        centerTitle: true,

        // Tombol BACK otomatis muncul
        title: const Text(
          'SCORE MATCH',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
      ),

      // =================================================
      // BODY
      // =================================================

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: gameFinished
            ? buildWinnerScreen()
            : buildScoreboard(),
      ),
    );
  }

  // =====================================================
  // SCOREBOARD
  // =====================================================

  Widget buildScoreboard() {
    return Column(
      children: [
        // MAX SCORE
        Text(
          'MAX ${widget.maxScore}',
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),

        const SizedBox(height: 18),

        // PLAYERS
        Expanded(
          child: Row(
            children: [
              // =========================================
              // PLAYER 1
              // =========================================

              Expanded(
                child: buildPlayer(
                  name: 'PLAYER 1',

                  score: player1Score,

                  color: const Color(0xFF3B82F6),

                  onPressed: () => addPoint(1),
                ),
              ),

              // =========================================
              // PEMISAH
              // =========================================

              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),

                child: Text(
                  ':',

                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // =========================================
              // PLAYER 2
              // =========================================

              Expanded(
                child: buildPlayer(
                  name: 'PLAYER 2',

                  score: player2Score,

                  color: const Color(0xFFEF4444),

                  onPressed: () => addPoint(2),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 15),

        // RESET
        SizedBox(
          width: double.infinity,
          height: 45,

          child: OutlinedButton(
            onPressed: resetGame,

            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.grey,

              side: const BorderSide(
                color: Color(0xFF30343A),
              ),

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),

            child: const Text(
              'RESET',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
          ),
        ),
      ],
    );
  }

  // =====================================================
  // WINNER SCREEN
  // =====================================================

  Widget buildWinnerScreen() {
    final bool player1Won =
        player1Score >= widget.maxScore;

    final Color winnerColor = player1Won
        ? const Color(0xFF3B82F6)
        : const Color(0xFFEF4444);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          // TROPHY
          const Icon(
            Icons.emoji_events_rounded,

            size: 90,

            color: Color(0xFFE5B84B),
          ),

          const SizedBox(height: 25),

          // WINNER
          const Text(
            'WINNER',

            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              letterSpacing: 4,
            ),
          ),

          const SizedBox(height: 10),

          // PLAYER NAME
          Text(
            getWinner(),

            style: TextStyle(
              color: winnerColor,
              fontSize: 36,
              fontWeight: FontWeight.w900,
              letterSpacing: 2,
            ),
          ),

          const SizedBox(height: 30),

          // FINAL SCORE
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 35,
              vertical: 22,
            ),

            decoration: BoxDecoration(
              color: const Color(0xFF15181D),

              borderRadius: BorderRadius.circular(10),

              border: Border.all(
                color: const Color(0xFF292E35),
              ),
            ),

            child: Row(
              mainAxisSize: MainAxisSize.min,

              children: [
                // PLAYER 1 SCORE
                Text(
                  '$player1Score',

                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.w900,
                  ),
                ),

                // :
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                  ),

                  child: Text(
                    ':',

                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // PLAYER 2 SCORE
                Text(
                  '$player2Score',

                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 45),

          // MAIN LAGI
          SizedBox(
            width: 220,
            height: 52,

            child: ElevatedButton(
              onPressed: resetGame,

              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFE5B84B),
                foregroundColor: Colors.black,
                elevation: 0,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),

              child: const Text(
                'MAIN LAGI',

                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
            ),
          ),

          const SizedBox(height: 10),

          // RESET
          TextButton(
            onPressed: resetGame,

            child: const Text(
              'RESET',

              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // =====================================================
  // PLAYER CARD
  // =====================================================

  Widget buildPlayer({
    required String name,
    required int score,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return Container(
      padding: const EdgeInsets.all(14),

      decoration: BoxDecoration(
        color: const Color(0xFF15181D),

        borderRadius: BorderRadius.circular(10),

        border: Border.all(
          color: const Color(0xFF292E35),
        ),
      ),

      child: Column(
        children: [
          // PLAYER NAME
          Text(
            name,

            style: TextStyle(
              color: color,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),

          const Spacer(),

          // SCORE
          Text(
            '$score',

            style: const TextStyle(
              color: Colors.white,
              fontSize: 80,
              fontWeight: FontWeight.w900,
            ),
          ),

          const Spacer(),

          // +1 BUTTON
          SizedBox(
            width: double.infinity,
            height: 55,

            child: ElevatedButton(
              onPressed: onPressed,

              style: ElevatedButton.styleFrom(
                backgroundColor: color,
                foregroundColor: Colors.white,
                elevation: 0,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),

              child: const Text(
                '+1',

                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}