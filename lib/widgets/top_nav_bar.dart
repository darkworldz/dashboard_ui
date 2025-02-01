import 'package:flutter/material.dart';

class TopNavBar extends StatelessWidget {
  const TopNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 120,
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Row(
              children: [
                const SizedBox(width: 20),
                // Home text on the left
                Text(
                  'Home',
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(width: 40),
                Spacer(),
                // Search bar in the center
                Container(
                  width: 400,
                  decoration: BoxDecoration(
                    color: const Color(0xFF2A2B3C),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    controller: TextEditingController(),
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      prefixIcon: Icon(Icons.search, color: Colors.grey[400]),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                    ),
                  ),
                ),
                // Spacer(),
                SizedBox(width: 50),
                // Icons on the right
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.note_add_outlined),
                      onPressed: () {},
                      color: Colors.grey[600],
                    ),
                    IconButton(
                      icon: const Icon(Icons.notifications_outlined),
                      onPressed: () {},
                      color: Colors.grey[600],
                    ),
                    IconButton(
                      icon: const Icon(Icons.history),
                      onPressed: () {},
                      color: Colors.grey[600],
                    ),
                    const SizedBox(width: 100),
                    // Profile circle

                    CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey[200],
                        child: Image.asset('assets/images/pfp7.png')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
