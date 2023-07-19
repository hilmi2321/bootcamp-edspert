import 'package:edspert_16/widget/auth_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Login',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/login_image.png'),
              Column(
                children: [
                  const Text(
                    'Selamat Datang',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  const Text(
                    'Selamat Datang di Aplikasi Widya Edu\n'
                    'Aplikasi Latihan dan konsultasi Soal',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 143, 142, 142),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Column(
                children: [
                  AuthButton(
                    iconPath: 'assets/google.png',
                    text: 'Masuk dengan Google',
                    color: Colors.white,
                    textColor: Colors.black,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  AuthButton(
                    iconPath: 'assets/apple.png',
                    text: 'Masuk dengan Apple ',
                    color: Colors.black,
                    textColor: Colors.white,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
