import 'package:vetqure_task/export/export.dart';

class TitleHeadWidgetInTitleSection extends StatelessWidget {
  const TitleHeadWidgetInTitleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        child: const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            "Tittle",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
