import 'package:dashboard_ui/widgets/home_dash.dart';
import 'package:dashboard_ui/widgets/side_bar.dart';
import 'package:flutter/material.dart';

class DashboardUi extends StatelessWidget {
  const DashboardUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                child: SideBar(),
              ),
            ),
            Expanded(
              flex: 8,
              child: HomeDash(),
            ),
          ],
        ),
      ),
    );
  }
}
