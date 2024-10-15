import 'package:vetqure_task/export/export.dart';

class LogoutSectionWidget extends StatefulWidget {
  final double widthSize;
  final double heightSize;
  const LogoutSectionWidget(
      {required this.widthSize, required this.heightSize, super.key});

  @override
  State<LogoutSectionWidget> createState() => _LogoutSectionWidgetState();
}

class _LogoutSectionWidgetState extends State<LogoutSectionWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Align(
        alignment: Alignment.topLeft,
        child: Container(
          width: widget.widthSize / 1,
          height: widget.heightSize / 12,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const LinearBorder(),
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 16.0),
                backgroundColor:
                    logout == false ? Colors.white : Colors.transparent,
                shadowColor: Colors.transparent,
                side: const BorderSide(color: Colors.white),
              ),
              onPressed: () {
                setState(() {
                  logout = !logout;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.logout_outlined,
                    color: logout == false ? Colors.black : Colors.white,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'LogOUt',
                    style: TextStyle(
                      color: logout == false ? Colors.black : Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
