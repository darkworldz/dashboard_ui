import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            // Company Logo
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey, width: 0.5),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'AS',
                    style: TextStyle(
                      color: Colors.red[400],
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Adstacks',
                    style: TextStyle(
                      color: Colors.red[400],
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),

            // Profile Section
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  // Profile Image
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.orange,
                        width: 2,
                      ),
                    ),
                    child: ClipOval(
                      child: Container(
                          color: Colors.grey[200],
                          child: ClipRRect(
                              child: Image.asset(
                            'assets/images/Bitmap.png',
                            fit: BoxFit.cover,
                          ))),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Pooja Mishra',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.purple[100],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'Admin',
                      style: TextStyle(
                        color: Colors.purple,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Navigation Items
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  _buildNavItem(Icons.home, 'Home'),
                  _buildNavItem(Icons.people, 'Employees'),
                  _buildNavItem(Icons.access_time, 'Attendance'),
                  _buildNavItem(Icons.summarize, 'Summary'),
                  _buildNavItem(Icons.info, 'Information'),
                  const SizedBox(height: 20),

                  // Workspaces Section
                  Container(
                    color: Colors.grey[100],
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 25),
                              child: Text(
                                'WORKSPACES',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Icon(Icons.add),
                          ],
                        ),
                        _buildWorkspaceItem('Adstacks'),
                        _buildWorkspaceItem('Finance'),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Bottom Navigation Items
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.grey[300]!, width: 1),
                ),
              ),
              child: Column(
                children: [
                  _buildNavItem(Icons.settings, 'Setting'),
                  _buildNavItem(Icons.logout, 'Logout'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildNavItem(IconData icon, String title) {
  return Container(
    padding: EdgeInsets.only(left: 40),
    child: ListTile(
      leading: Icon(icon, color: Colors.black87),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.black87,
          fontSize: 14,
        ),
      ),
      onTap: () {},
      dense: true,
    ),
  );
}

Widget _buildWorkspaceItem(String title) {
  return Container(
    padding: EdgeInsets.only(left: 40),
    child: ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 14),
          ),
          const Icon(Icons.keyboard_arrow_down),
        ],
      ),
      onTap: () {},
      dense: true,
    ),
  );
}
