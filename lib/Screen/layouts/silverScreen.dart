import 'package:flutter/material.dart';
import 'package:insta_clone/Utility/colors.dart';

class SilverScreenWidget extends StatelessWidget {
  const SilverScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 200,
              pinned: true,
              backgroundColor: AppColors.purpleColor, // Use your color
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  width: double.infinity,
                  color: AppColors.purpleColor, // Background color
                ),
                title: Text("Some Text", style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
