import 'package:vetqure_task/export/export.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({
    super.key,
    required this.widthSize,
    required this.heightSize,
  });

  final double widthSize;
  final double heightSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthSize / 1.8,
      height: heightSize / 3.5,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: LineChart(
          LineChartData(
            maxY: 50,
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
                  reservedSize: 40,
                  getTitlesWidget: (value, meta) {
                    switch (value.toInt()) {
                      case 0:
                        return Text('9 to 10',
                            style: TextStyle(fontWeight: FontWeight.bold));
                      case 1:
                        return Text('10 to 11',
                            style: TextStyle(fontWeight: FontWeight.bold));
                      case 2:
                        return Text('11 to 12',
                            style: TextStyle(fontWeight: FontWeight.bold));
                      case 3:
                        return Text('12 to 1',
                            style: TextStyle(fontWeight: FontWeight.bold));

                      default:
                        return Container();
                    }
                  },
                  interval: 0.5,
                ),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 20,
                  interval: 10,
                  getTitlesWidget: (value, meta) {
                    return Text(value.toInt().toString(),
                        style: TextStyle(fontWeight: FontWeight.bold));
                  },
                ),
              ),
            ),
            lineBarsData: [
              LineChartBarData(
                spots: [
                  FlSpot(0, 10),
                  FlSpot(1, 30),
                  FlSpot(2, 20),
                  FlSpot(3, 40),
                ],
                isCurved: true,
                dotData: FlDotData(show: true),
                belowBarData: BarAreaData(show: false),
              ),
            ],
            gridData: FlGridData(show: false),
          ),
        ),
      ),
    );
  }
}
