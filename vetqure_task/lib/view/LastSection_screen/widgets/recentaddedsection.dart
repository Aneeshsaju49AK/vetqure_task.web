import 'package:vetqure_task/export/export.dart';

class RecentAddedSection extends StatelessWidget {
  const RecentAddedSection({
    super.key,
    required this.widthSize,
    required this.heightSize,
  });

  final double widthSize;
  final double heightSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      width: widthSize / 4,
      height: heightSize / 1,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Recent Orders",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            ),
          ),
          Container(
            width: widthSize / 1,
            height: heightSize / 3.5,
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: widthSize / 1,
                    height: heightSize / 20,
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 32,
                          child: Icon(Icons.person_2_outlined),
                        ),
                        const Column(
                          children: [
                            Text("data"),
                            Text("data"),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          width: widthSize / 25,
                          height: heightSize / 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.purple,
                          ),
                          child: const Center(
                              child: Text(
                            "data",
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                        const SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
