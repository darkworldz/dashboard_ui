import 'package:flutter/material.dart';

class CalendarSection extends StatelessWidget {
  const CalendarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF1A1B2E), // Dark blue background
      padding: const EdgeInsets.only(right: 30, left: 30),
      child: Column(
        children: [
          // Header with operating hours
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              'GENERAL 10:00 AM TO 7:00 PM',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Calendar Widget
          CalendarWidget(),

          const SizedBox(height: 20),

          // Birthday Section
          _buildSection(
            title: 'Today Birthday',
            count: 2,
            buttonText: 'Birthday Wishing',
            profiles: const [
              'assets/images/pfp2.png',
              'assets/images/pfp1.png'
            ],
          ),

          const SizedBox(height: 20),

          // Anniversary Section
          _buildSection(
            title: 'Anniversary',
            count: 3,
            buttonText: 'Anniversary Wishing',
            profiles: const [
              'assets/images/pfp1.png',
              'assets/images/pfp3.png',
              'assets/images/pfp2.png'
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSection({
    required String title,
    required int count,
    required String buttonText,
    required List<String> profiles,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF2A2B3D),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title with sparkles
          Row(
            children: [
              Text('✨', style: TextStyle(color: Colors.yellow)),
              Text(
                ' $title ',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text('✨', style: TextStyle(color: Colors.yellow)),
            ],
          ),

          const SizedBox(height: 12),

          // Profile avatars
          Row(
            children: profiles.map((profile) {
              return Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: CircleAvatar(
                  // backgroundColor: Colors.grey[800],
                  backgroundImage: AssetImage(profile),
                ),
              );
            }).toList(),
          ),

          const SizedBox(height: 12),

          // Total count
          Row(
            children: [
              const Text(
                'Total',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                '$count',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          // Wishing button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.send, size: 18),
              label: Text(buttonText),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Calendar widget component
class CalendarWidget extends StatelessWidget {
  const CalendarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          // Month selector
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Text(
                    'OCT',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  Icon(Icons.arrow_drop_down, color: Colors.grey[600]),
                ],
              ),
              Row(
                children: [
                  const Text(
                    '2023',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(Icons.arrow_drop_down, color: Colors.grey[600]),
                ],
              ),
            ],
          ),

          const SizedBox(height: 16),

          // Calendar grid
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            itemCount: 35, // 5 weeks * 7 days
            itemBuilder: (context, index) {
              // Calculate day number (1-31)
              final dayNumber = index - 6; // Adjust for starting day

              // Highlight specific dates (26, 27, 28, 29, 30)
              final isHighlighted = dayNumber >= 26 && dayNumber <= 30;

              return Container(
                alignment: Alignment.center,
                decoration: isHighlighted
                    ? BoxDecoration(
                        color: Colors.blue.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(8),
                      )
                    : null,
                child: Text(
                  dayNumber > 0 && dayNumber <= 31 ? '$dayNumber' : '',
                  style: TextStyle(
                    color: isHighlighted ? Colors.blue : Colors.black87,
                    fontWeight:
                        isHighlighted ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
