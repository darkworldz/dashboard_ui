import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CenterActivitySection extends StatelessWidget {
  const CenterActivitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(241, 241, 239, 1),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Top Rating Project Card
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF9C27B0), Color(0xFF7B1FA2)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(24),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'ETHEREUM 2.0',
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Top Rating\nProject',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black54,
                          foregroundColor: Colors.white,
                        ),
                        child: const Text('Learn More'),
                      ),
                    ],
                  ),
                  Expanded(
                    child: SizedBox(
                        child: Image.asset('assets/images/logo-metavill2.png')),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Projects and Creators Section
            Row(
              children: [
                Expanded(
                  child: _buildProjectsCard(),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: _buildCreatorsCard(),
                ),
              ],
            ),

            const SizedBox(height: 24),

            // Performance Chart
            _buildPerformanceCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildProjectsCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF242635),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'All Projects',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          _buildProjectItem(
            color: Colors.red.shade400,
            title: 'Technology behind the Blockchain',
            subtitle: 'Project #1',
            image: 'assets/images/Frame16.png',
          ),
          const SizedBox(height: 12),
          _buildProjectItem(
            color: Colors.blue.shade400,
            title: 'Technology behind the Blockchain',
            subtitle: 'Project #1',
            image: 'assets/images/Frame17.png',
          ),
          const SizedBox(height: 12),
          _buildProjectItem(
            color: Colors.green.shade400,
            title: 'Technology behind the Blockchain',
            subtitle: 'Project #1',
            image: 'assets/images/Frame15.png',
          ),
        ],
      ),
    );
  }

  Widget _buildProjectItem({
    required Color color,
    required String title,
    required String subtitle,
    required String image,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withValues(alpha: .1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: color.withValues(alpha: .2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: ClipRRect(
              child: Image.asset(
                image,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.white60,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.edit, color: Colors.white60),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildCreatorsCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF242635),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Top Creators',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          _buildCreatorItem('@madison_czl', '9821', 'assets/images/pfp4.png'),
          _buildCreatorItem('@karl.will02', '7022', 'assets/images/pfp5.png'),
          _buildCreatorItem('@madison_czl', '9821', 'assets/images/pfp6.png'),
          _buildCreatorItem('@madison_czl', '9821', 'assets/images/pfp5.png'),
        ],
      ),
    );
  }

  Widget _buildCreatorItem(String name, String rating, String image) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          CircleAvatar(
            radius: 16,
            // backgroundColor: Colors.white.withValues(alpha: .1),
            backgroundImage: AssetImage(image),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
          Text(
            rating,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          const SizedBox(width: 8),
          Container(
            width: 60,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPerformanceCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Text(
                'Over',
                style: TextStyle(
                    color: Color(0xFF242635),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 8),
              Text(
                'All Performance',
                style: TextStyle(
                    color: Color(0xFF242635),
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            'The Years',
            style: TextStyle(
                color: Color(0xFF242635),
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 24),
          SizedBox(
            height: 200,
            child: LineChart(
              LineChartData(
                minX: 0,
                maxX: 5,
                minY: 0,
                maxY: 50,
                gridData: FlGridData(show: false),
                titlesData: FlTitlesData(
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 30,
                      interval: 10,
                      getTitlesWidget: (value, meta) {
                        return Text(
                          value.toInt().toString(),
                          style: const TextStyle(
                            color: Color(0xFF7B1FA2),
                          ),
                        );
                      },
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 1,
                      getTitlesWidget: (value, meta) {
                        final years = [
                          '2015',
                          '2016',
                          '2017',
                          '2018',
                          '2019',
                          '2020'
                        ];
                        if (value.toInt() == 0) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Text(
                              years[value.toInt()],
                              style: const TextStyle(
                                color: Color(0xFF7B1FA2),
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          );
                        }
                        if (value.toInt() == years.length - 1) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 25.0),
                            child: Text(
                              years[value.toInt()],
                              style: const TextStyle(
                                color: Color(0xFF7B1FA2),
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          );
                        }
                        if (value.toInt() < years.length) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 1.0),
                            child: Text(
                              years[value.toInt()],
                              style: const TextStyle(
                                color: Color(0xFF7B1FA2),
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          );
                        }
                        return const Text('');
                      },
                    ),
                  ),
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                ),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  // Blue/Purple Line
                  LineChartBarData(
                    spots: const [
                      FlSpot(0, 25),
                      FlSpot(1, 20),
                      FlSpot(2, 15),
                      FlSpot(3, 40),
                      FlSpot(4, 15),
                      FlSpot(5, 30),
                    ],
                    isCurved: true,
                    color: const Color(0xFF7B1FA2),
                    barWidth: 3,
                    dotData: FlDotData(
                      show: true,
                      getDotPainter: (spot, percent, barData, index) {
                        // Only show dot for 2018 point
                        if (spot.x == 3) {
                          return FlDotCirclePainter(
                            radius: 6,
                            color: Colors.white,
                            strokeWidth: 2,
                            strokeColor: const Color(0xFF7B1FA2),
                          );
                        }
                        return FlDotCirclePainter(
                          radius: 0,
                          color: Colors.transparent,
                          strokeWidth: 0,
                          strokeColor: Colors.transparent,
                        );
                      },
                    ),
                    belowBarData: BarAreaData(
                      show: true,
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xFF7B1FA2).withOpacity(0.3),
                          const Color(0xFF7B1FA2).withOpacity(0.1),
                          const Color(0xFF7B1FA2).withOpacity(0.0),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  // Pink/Red Line
                  LineChartBarData(
                    spots: const [
                      FlSpot(0, 35),
                      FlSpot(1, 30),
                      FlSpot(2, 20),
                      FlSpot(3, 35),
                      FlSpot(4, 25),
                      FlSpot(5, 40),
                    ],
                    isCurved: true,
                    color: const Color(0xFFE57373),
                    barWidth: 3,
                    dotData: const FlDotData(show: false),
                    belowBarData: BarAreaData(
                      show: true,
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xFFE57373).withOpacity(0.3),
                          const Color(0xFFE57373).withOpacity(0.1),
                          const Color(0xFFE57373).withOpacity(0.0),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ],
                extraLinesData: ExtraLinesData(
                  extraLinesOnTop: true,
                  horizontalLines: [],
                  verticalLines: [],
                ),
                lineTouchData: LineTouchData(
                  enabled: true,
                  touchTooltipData: LineTouchTooltipData(
                    tooltipBgColor: const Color(0xFF7B1FA2),
                    tooltipRoundedRadius: 8,
                    showOnTopOfTheChartBoxArea: true,
                    fitInsideHorizontally: true,
                    tooltipMargin: 0,
                    getTooltipItems: (touchedSpots) {
                      return touchedSpots.map((LineBarSpot touchedSpot) {
                        if (touchedSpot.x == 3) {
                          // 2018 point
                          return LineTooltipItem(
                            '2018\n',
                            const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text: '35',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          );
                        }
                        return null;
                      }).toList();
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
