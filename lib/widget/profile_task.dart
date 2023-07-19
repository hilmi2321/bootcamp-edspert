import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class ProfileTask extends StatelessWidget {
  final String label;
  final String input;
  final String iconProfile;

  const ProfileTask(
      {super.key,
      required this.label,
      required this.input,
      required this.iconProfile});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              label,
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Column(
          children: [
            Container(
              width: 400,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Image.asset(
                    iconProfile,
                    height: 16,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    input,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white, // Mengubah background menjadi putih
                border: Border.all(
                  color: Colors.black, // Mengatur warna border menjadi hitam
                  width: 1.0, // Mengatur ketebalan border
                ),
                borderRadius: BorderRadius.circular(
                    8.0), // Mengatur radius sudut menjadi 8.0
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
          ],
        )
      ],
    );
  }
}
