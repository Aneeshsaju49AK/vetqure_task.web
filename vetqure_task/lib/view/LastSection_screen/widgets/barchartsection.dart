import 'package:vetqure_task/export/export.dart';

class BarChartSectionWigets extends StatelessWidget {
  const BarChartSectionWigets({
    super.key,
    required this.widthSize,
    required this.heightSize,
  });

  final double widthSize;
  final double heightSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthSize / 3,
      height: heightSize / 1,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: BarChart(
          BarChartData(
            maxY: 50,
            barGroups: [
              BarChartGroupData(
                x: 0,
                barRods: [
                  BarChartRodData(
                      borderRadius: BorderRadius.circular(0),
                      toY: 40,
                      width: 50,
                      color: Colors.black),
                ],
              ),
              BarChartGroupData(
                x: 1,
                barRods: [
                  BarChartRodData(
                      borderRadius: BorderRadius.circular(0),
                      toY: 20,
                      width: 50,
                      color: Colors.red),
                ],
              ),
              BarChartGroupData(
                x: 2,
                barRods: [
                  BarChartRodData(
                      borderRadius: BorderRadius.circular(0),
                      toY: 35,
                      width: 50,
                      color: Colors.blue),
                ],
              ),
              BarChartGroupData(
                x: 3,
                barRods: [
                  BarChartRodData(
                      borderRadius: BorderRadius.circular(0),
                      toY: 45,
                      width: 50,
                      color: Colors.yellow),
                ],
              ),
            ],
            gridData: const FlGridData(
              show: false,
            ),
            borderData: FlBorderData(
              show: true,
              border: const Border(
                bottom: BorderSide(color: Colors.black, width: 2),
                left: BorderSide(color: Colors.black, width: 2),
                right: BorderSide(color: Colors.transparent),
                top: BorderSide(color: Colors.transparent),
              ),
            ),
            titlesData: FlTitlesData(
              show: true,
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: (double value, TitleMeta meta) {
                    switch (value.toInt()) {
                      case 0:
                        return Text('Revenue',
                            style: TextStyle(fontWeight: FontWeight.bold));
                      case 1:
                        return Text('Loss',
                            style: TextStyle(fontWeight: FontWeight.bold));
                      case 2:
                        return Text('Profit',
                            style: TextStyle(fontWeight: FontWeight.bold));
                      case 3:
                        return Text('Expenses',
                            style: TextStyle(fontWeight: FontWeight.bold));
                      default:
                        return Container();
                    }
                  },
                  reservedSize: 40,
                ),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: 10,
                  getTitlesWidget: (double value, TitleMeta meta) {
                    return Text(value.toInt().toString(),
                        style: const TextStyle(fontWeight: FontWeight.bold));
                  },
                  reservedSize: 40,
                ),
              ),
            ),
            barTouchData: BarTouchData(enabled: false),
          ),
        ),
      ),
    );
  }
}
