import 'package:vetqure_task/export/export.dart';

class UserDemographicsWidget extends StatelessWidget {
  const UserDemographicsWidget({
    super.key,
    required this.widthSize,
    required this.heightSize,
  });

  final double widthSize;
  final double heightSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "User Demographics",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Container(
            width: widthSize / 17,
            height: heightSize / 30,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Row(
              children: [
                Icon(Icons.sort),
                Text(
                  "filter",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
