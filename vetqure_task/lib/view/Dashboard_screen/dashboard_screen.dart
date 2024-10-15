import 'package:vetqure_task/export/export.dart';

class DashboardScreen extends StatefulWidget {
  final double widthSize;
  final double heightSize;
  const DashboardScreen(
      {required this.widthSize, required this.heightSize, super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: const Color.fromARGB(255, 32, 6, 126),
        child: Center(
          child: Column(
            children: [
              const ProfieWidgetDashboard(),
              const FunctionslistListbuilderWidget(),
              LogoutSectionWidget(
                widthSize: widget.widthSize,
                heightSize: widget.heightSize,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
