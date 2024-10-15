import 'package:vetqure_task/export/export.dart';

class TotalWalkInWidget extends StatelessWidget {
  const TotalWalkInWidget({
    super.key,
    required this.widthSize,
    required this.heightSize,
  });

  final double widthSize;
  final double heightSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        width: widthSize / 1.5,
        height: heightSize / 13,
        child: Row(
          children: [
            Container(
              width: widthSize / 15,
              height: heightSize / 13,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "20",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  Text("Total Walkin"),
                ],
              ),
            ),
            Container(
              width: widthSize / 15,
              height: heightSize / 13,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "20",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                      Icon(
                        Icons.arrow_downward_outlined,
                        color: Colors.red,
                      ),
                      Text(
                        "20%",
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                  Text("New Client"),
                ],
              ),
            ),
            Container(
              width: widthSize / 15,
              height: heightSize / 13,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "20",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                      Icon(
                        Icons.arrow_downward_outlined,
                        color: Colors.red,
                      ),
                      Text(
                        "20%",
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                  Text("New Client"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
