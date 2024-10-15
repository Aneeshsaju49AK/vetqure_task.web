import 'package:vetqure_task/export/export.dart';

class RevenueBreakDownWidget extends StatelessWidget {
  const RevenueBreakDownWidget({
    super.key,
    required this.widthSize,
    required this.heightSize,
  });

  final double widthSize;
  final double heightSize;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Row(
            children: [
              // You can uncomment this part if you need a left placeholder
              // Expanded(
              //   flex: 1,
              //   child: Container(
              //     color: Colors.amber,
              //   ),
              // ),
              Expanded(
                flex: 25,
                child: Padding(
                  padding: const EdgeInsets.only(left: 40, right: 35),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14)),
                    width: widthSize / 1.3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            "Revenue BreakDown",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Container(
                          width: widthSize / 1.3,
                          height: heightSize / 11,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              double value = 60;
                              double remainingValue = 100 - value;

                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 50),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: widthSize / 16,
                                      height: heightSize / 10,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          PieChart(
                                            PieChartData(
                                              sectionsSpace: 0,
                                              centerSpaceRadius: 30,
                                              sections: [
                                                PieChartSectionData(
                                                  value: value,
                                                  color: Colors.purple,
                                                  radius: 13,
                                                  title: '',
                                                ),
                                                PieChartSectionData(
                                                  value: remainingValue,
                                                  color: Colors.grey,
                                                  radius: 13,
                                                  title: '',
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            '$value%',
                                            style: const TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "10000",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Text("data"),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
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
