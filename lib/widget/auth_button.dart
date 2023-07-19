import 'package:edspert_16/my_profile.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String iconPath;
  final String text;
  final Color color;
  final Color textColor;

  const AuthButton({
    super.key,
    required this.iconPath,
    required this.text,
    required this.color,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return Builder(builder: (BuildContext context) {
                  return MyProfile();
                });
              }),
            ),
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shadowColor: Colors.blueAccent,
            elevation: 8,
            side: BorderSide(
                color:
                    color == Colors.black ? Colors.transparent : Colors.blue)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                iconPath,
                height: 30,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                text,
                style: TextStyle(color: textColor),
              ),
            ],
          ),
        ));
  }
}
