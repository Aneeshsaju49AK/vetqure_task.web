import 'package:vetqure_task/export/export.dart';

class ChartSectionMainWidget extends StatelessWidget {
  const ChartSectionMainWidget({
    super.key,
    required this.widthSize,
    required this.heightSize,
  });

  final double widthSize;
  final double heightSize;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Row(
            children: [
              // Expanded(
              //   flex: 1,
              //   child: Container(
              //     color: Colors.amber,
              //   ),
              // ),
              Expanded(
                flex: 40,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14)),
                        width: widthSize / 1.8,
                        height: heightSize / 1,
                        child: Column(
                          children: [
                            UserDemographicsWidget(
                                widthSize: widthSize, heightSize: heightSize),
                            TotalWalkInWidget(
                                widthSize: widthSize, heightSize: heightSize),
                            LineChartWidget(
                                widthSize: widthSize, heightSize: heightSize),
                          ],
                        ),
                      ),
                      PieChartSectionWidget(
                          widthSize: widthSize, heightSize: heightSize),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
