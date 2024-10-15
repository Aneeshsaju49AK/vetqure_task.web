import 'package:vetqure_task/export/export.dart';

class TitleSectionWidgetMain extends StatelessWidget {
  const TitleSectionWidgetMain({
    super.key,
    required this.widthSize,
    required this.heightSize,
  });

  final double widthSize;
  final double heightSize;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.white,
        child: Row(
          children: [
            const TitleHeadWidgetInTitleSection(),
            buttonSectionInTitleWidget(
                widthSize: widthSize, heightSize: heightSize)
          ],
        ),
      ),
    );
  }
}
