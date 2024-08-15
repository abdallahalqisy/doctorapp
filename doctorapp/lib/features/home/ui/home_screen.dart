import 'package:doctorapp/features/home/ui/widgets/doctor_blue_container.dart';
import 'package:doctorapp/features/home/ui/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(20, 16, 20, 28),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              DoctorBlueContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
