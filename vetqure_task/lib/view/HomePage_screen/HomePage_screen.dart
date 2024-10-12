import 'package:flutter/material.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({super.key});

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  int selectedIndex = -1;
  bool logout = false;
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> buttonData = [
      {"name": "Dashboard", "icon": Icons.home},
      {"name": "Calendar", "icon": Icons.person},
      {"name": "client", "icon": Icons.settings},
      {"name": "Profile", "icon": Icons.message},
      {"name": "Finace", "icon": Icons.notifications},
      {"name": "Order", "icon": Icons.help},
    ];
    double widthSize = MediaQuery.sizeOf(context).width;
    double heightSize = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            // Yellow container takes less space (flex 1)
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
                child: Center(
                    child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 50,
                              child: Icon(Icons.person_2_outlined),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Name",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.edit)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: ListView.builder(
                          itemCount: buttonData.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20.0, horizontal: 16.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: LinearBorder(),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 16.0),
                                  backgroundColor: selectedIndex == index
                                      ? Colors
                                          .white // Highlight selected button
                                      : Colors
                                          .transparent, // Transparent when unselected
                                  shadowColor: Colors.transparent, // No shadow
                                  side: BorderSide(
                                      color: Colors
                                          .white), // Add border for visibility
                                ),
                                onPressed: () {
                                  setState(() {
                                    selectedIndex =
                                        index; // Update selected button
                                  });
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      buttonData[index]["icon"],
                                      color: selectedIndex == index
                                          ? Colors
                                              .black // Change icon color when selected
                                          : Colors.white,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      buttonData[index]["name"],
                                      style: TextStyle(
                                        color: selectedIndex == index
                                            ? Colors
                                                .black // Change text color when selected
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
                    ),
                    Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: widthSize / 1,
                            height: heightSize / 12,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20.0, horizontal: 16.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: LinearBorder(),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 16.0),
                                  backgroundColor: selectedIndex == false
                                      ? Colors
                                          .white // Highlight selected button
                                      : Colors
                                          .transparent, // Transparent when unselected
                                  shadowColor: Colors.transparent, // No shadow
                                  side: BorderSide(
                                      color: Colors
                                          .white), // Add border for visibility
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
                                      color: logout == false
                                          ? Colors
                                              .black // Change icon color when selected
                                          : Colors.white,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'LogOUt',
                                      style: TextStyle(
                                        color: logout == false
                                            ? Colors
                                                .black // Change text color when selected
                                            : Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )),
                  ],
                )),
              ),
            ),
            // Blue container balances the remaining space (flex 2)
            Expanded(
              flex: 5,
              child: Container(
                color: const Color.fromARGB(255, 243, 239, 239),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Text(
                                    "Tittle",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      // Three buttons with icons
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            width: widthSize / 15,
                                            height: heightSize / 20,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Icon(Icons
                                                    .invert_colors_rounded),
                                                Text("message")
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            width: widthSize / 16,
                                            height: heightSize / 20,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Icon(Icons.search),
                                                Text("message")
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            width: widthSize / 16,
                                            height: heightSize / 20,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Icon(Icons.settings),
                                                Text("message")
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),

                                      // Divider
                                      VerticalDivider(
                                        color:
                                            Colors.black, // Black color divider
                                        thickness: 1, // Divider thickness
                                        width: 20, // Space around the divider
                                      ),

                                      // CircleAvatar
                                      CircleAvatar(
                                        radius: 20, // Size of the avatar
                                        backgroundColor: Colors.blue,
                                        child: Icon(Icons.person,
                                            color:
                                                Colors.white), // Avatar content
                                      ),

                                      // Dropdown button
                                      DropdownButton<String>(
                                        value: 'Name',
                                        items: <String>[
                                          'Name',
                                          'Option 2',
                                          'Option 3'
                                        ].map<DropdownMenuItem<String>>(
                                            (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                        onChanged: (String? newValue) {
                                          // Handle dropdown selection
                                          print('Selected: $newValue');
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.blueAccent,
                            child: Row(
                              children: [],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            color: Colors.blueAccent,
                            child: Row(
                              children: [],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      flex: 7,
                      child: Container(
                        color: Colors.blueAccent,
                        child: Row(
                          children: [],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.amber,
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Container(
                                  color: Colors.amber,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.amber),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Recent Added",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      Container(
                                        clipBehavior: Clip.antiAlias,
                                        width: widthSize / 1,
                                        height: heightSize / 3.6,
                                        child: ListView.builder(
                                          itemCount: 4,
                                          itemBuilder: (context, index) {
                                            return Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                width: widthSize / 1,
                                                height: heightSize / 25,
                                                child: Row(
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 40,
                                                    ),
                                                    Column(
                                                      children: [
                                                        Text("data"),
                                                        Text("data"),
                                                      ],
                                                    ),
                                                    Spacer(),
                                                    Container(
                                                      width: widthSize / 25,
                                                      height: heightSize / 45,
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Colors.limeAccent,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20)),
                                                      child: Text("data"),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(0)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.amber),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Recent Added",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      Container(
                                        clipBehavior: Clip.antiAlias,
                                        width: widthSize / 1,
                                        height: heightSize / 3.6,
                                        child: ListView.builder(
                                          itemCount: 4,
                                          itemBuilder: (context, index) {
                                            return Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Container(
                                                width: widthSize / 1,
                                                height: heightSize / 25,
                                                child: Row(
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 40,
                                                    ),
                                                    Column(
                                                      children: [
                                                        Text("data"),
                                                        Text("data"),
                                                      ],
                                                    ),
                                                    Spacer(),
                                                    Container(
                                                      width: widthSize / 25,
                                                      height: heightSize / 45,
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Colors.limeAccent,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20)),
                                                      child: Text("data"),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(0)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
