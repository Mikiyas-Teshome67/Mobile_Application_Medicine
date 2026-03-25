import 'package:flutter/material.dart';

import '../pages/main_shell_page.dart';

class IntroAuthPage extends StatelessWidget {
  const IntroAuthPage({super.key});

  Future<void> _fakeAuth(BuildContext context, String provider) async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('$provider flow stub: integrate API credentials.')),
    );
    await Future<void>.delayed(const Duration(milliseconds: 600));
    if (context.mounted) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const MainShellPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF030712), Color(0xFF0F2A5A)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "ራዕይ (Ra'ey)",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                    shadows: [Shadow(color: Colors.cyanAccent, blurRadius: 24)],
                  ),
                ),
                const SizedBox(height: 28),
                _authButton(
                  onTap: () => _fakeAuth(context, 'Google Sign In / Sign Up'),
                  text: 'Continue with Google',
                  color: Colors.white,
                  textColor: Colors.black,
                ),
                const SizedBox(height: 12),
                _authButton(
                  onTap: () => _fakeAuth(context, 'Facebook Sign In / Sign Up'),
                  text: 'Continue with Facebook',
                  color: const Color(0xFF1877F2),
                  textColor: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _authButton({
    required VoidCallback onTap,
    required String text,
    required Color color,
    required Color textColor,
  }) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: textColor,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
        onPressed: onTap,
        child: Text(text),
      ),
    );
  }
}
