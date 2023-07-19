import 'package:edspert_16/widget/profile_task.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Profile',
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
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/me.png'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileTask(
                iconProfile: ('assets/name.png'),
                label: ('Name : '),
                input: ('Muhamad Hilmi F'),
              ),
              ProfileTask(
                iconProfile: ('assets/birth.png'),
                label: ('Birth : '),
                input: ('22/03/2003'),
              ),
              ProfileTask(
                iconProfile: ('assets/status.png'),
                label: ('Status : '),
                input: ('Mahasiswa'),
              ),
              ProfileTask(
                iconProfile: ('assets/loc.png'),
                label: ('Address : '),
                input: ('Bandung'),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
