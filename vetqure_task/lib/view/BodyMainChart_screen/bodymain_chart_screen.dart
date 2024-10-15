import 'package:vetqure_task/export/export.dart';

class BodyMainChartWidget extends StatelessWidget {
  const BodyMainChartWidget({
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
      child: Container(
        color: const Color.fromARGB(255, 243, 239, 239),
        child: Column(
          children: [
            TitleSectionWidgetMain(
                widthSize: widthSize, heightSize: heightSize),
            ChartSectionMainWidget(
                widthSize: widthSize, heightSize: heightSize),
            RevenueBreakDownWidget(
                widthSize: widthSize, heightSize: heightSize),
            LastSectionWidgets(widthSize: widthSize, heightSize: heightSize),
          ],
        ),
      ),
    );
  }
}
