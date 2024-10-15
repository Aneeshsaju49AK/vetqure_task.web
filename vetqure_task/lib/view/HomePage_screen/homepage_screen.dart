import 'package:vetqure_task/export/export.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.sizeOf(context).width;
    double heightSize = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            DashboardScreen(widthSize: widthSize, heightSize: heightSize),
            BodyMainChartWidget(widthSize: widthSize, heightSize: heightSize),
          ],
        ),
      ),
    );
  }
}
