import 'package:vetqure_task/export/export.dart';

class PieChartSectionWidget extends StatelessWidget {
  const PieChartSectionWidget({
    super.key,
    required this.widthSize,
    required this.heightSize,
  });

  final double widthSize;
  final double heightSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthSize / 5,
      height: heightSize / 1,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(14)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: heightSize / 20,
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "User Demographics",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  width: widthSize / 17,
                  height: heightSize / 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.sort),
                      Text(
                        "filter",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: PieChart(
                PieChartData(
                  sectionsSpace: 2,
                  sections: [
                    PieChartSectionData(
                      value: 50,
                      color: Colors.green,
                      title: '50%',
                      radius: 150,
                      titleStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    PieChartSectionData(
                      value: 35,
                      color: Colors.blue,
                      title: '35%',
                      radius: 150,
                      titleStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    PieChartSectionData(
                      value: 25,
                      color: Colors.purple,
                      title: '25%',
                      radius: 150,
                      titleStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                  centerSpaceRadius: 0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
