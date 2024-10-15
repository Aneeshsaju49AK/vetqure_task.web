import 'package:vetqure_task/export/export.dart';

class LastSectionWidgets extends StatelessWidget {
  const LastSectionWidgets({
    super.key,
    required this.widthSize,
    required this.heightSize,
  });

  final double widthSize;
  final double heightSize;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Row(
            children: [
              // Expanded(
              //   flex: 1,
              //   child: Container(),
              // ),
              Expanded(
                flex: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BarChartSectionWigets(
                        widthSize: widthSize, heightSize: heightSize),
                    RecentAddedSection(
                        widthSize: widthSize, heightSize: heightSize),
                    RevenueBreakDownSectionSub(
                        widthSize: widthSize, heightSize: heightSize)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
