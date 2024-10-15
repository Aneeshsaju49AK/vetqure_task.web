import 'package:vetqure_task/export/export.dart';

class buttonSectionInTitleWidget extends StatelessWidget {
  const buttonSectionInTitleWidget({
    super.key,
    required this.widthSize,
    required this.heightSize,
  });

  final double widthSize;
  final double heightSize;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: widthSize / 15,
                    height: heightSize / 20,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.invert_colors_rounded),
                        Text("message")
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: widthSize / 16,
                    height: heightSize / 20,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [Icon(Icons.search), Text("message")],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: widthSize / 16,
                    height: heightSize / 20,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [Icon(Icons.settings), Text("message")],
                    ),
                  ),
                ],
              ),
              const VerticalDivider(
                color: Colors.black,
                thickness: 1,
                width: 20,
              ),
              const CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blue,
                child: Icon(Icons.person, color: Colors.white),
              ),
              DropdownButton<String>(
                value: 'Name',
                items: <String>['Name', 'Option 2', 'Option 3']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  print('Selected: $newValue');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
