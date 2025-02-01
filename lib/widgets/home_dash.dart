import 'package:dashboard_ui/widgets/calendar_section.dart';
import 'package:dashboard_ui/widgets/center_activity_section.dart';
import 'package:dashboard_ui/widgets/top_nav_bar.dart';
import 'package:flutter/material.dart';

class HomeDash extends StatelessWidget {
  const HomeDash({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopNavBar(),
        Expanded(
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: CenterActivitySection(),
              ),
              Expanded(
                flex: 2,
                child: CalendarSection(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
