import 'package:vetqure_task/export/export.dart';

class FunctionslistListbuilderWidget extends StatefulWidget {
  const FunctionslistListbuilderWidget({super.key});

  @override
  State<FunctionslistListbuilderWidget> createState() =>
      _FunctionslistListbuilderWidgetState();
}

class _FunctionslistListbuilderWidgetState
    extends State<FunctionslistListbuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        child: ListView.builder(
          itemCount: buttonData.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const LinearBorder(),
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 16.0),
                  backgroundColor: selectedIndex == index
                      ? Colors.white
                      : Colors.transparent,
                  shadowColor: Colors.transparent,
                  side: const BorderSide(color: Colors.white),
                ),
                onPressed: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      buttonData[index]["icon"],
                      color:
                          selectedIndex == index ? Colors.black : Colors.white,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      buttonData[index]["name"],
                      style: TextStyle(
                        color: selectedIndex == index
                            ? Colors.black
                            : Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
