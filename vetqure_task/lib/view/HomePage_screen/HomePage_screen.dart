import 'package:fl_chart/fl_chart.dart';
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
                color: const Color.fromARGB(255, 32, 6, 126),
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
                                      fontWeight: FontWeight.w600,color: Colors.white),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(Icons.edit,color: Colors.white,)
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
                        color: Colors.white,
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
                    Expanded(
                      flex: 6,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Row(
                            children: [
                              // Expanded(
                              //   flex: 1,
                              //   child: Container(
                              //     color: Colors.amber,
                              //   ),
                              // ),
                              Expanded(
                                flex: 40,
                                child: Container(
                                  
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                    borderRadius: BorderRadius.circular(14)
                                  ),
                                        width: widthSize / 1.8,
                                        height: heightSize / 1,
                                        
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 25,
                                                      vertical: 5),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "User Demographics",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight
                                                            .bold), // Adjusted text style
                                                  ),
                                                  Container(
                                                    width: widthSize / 17,
                                                    height: heightSize / 30,
                                                    alignment: Alignment
                                                        .center, // Centering the text in the container
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors
                                                              .black), // Optional: background color for data container
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5), // Rounded corners
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Icon(Icons.sort),
                                                        Text(
                                                          "filter",
                                                          style: TextStyle(
                                                              fontSize:
                                                                  12), // Adjusted text size
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 25),
                                              child: Container(
                                                width: widthSize / 1.5,
                                                height: heightSize / 13,
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      width: widthSize / 15,
                                                      height: heightSize / 13,
                                                      
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "20",
                                                            style: TextStyle(
                                                                fontSize: 24,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700),
                                                          ),
                                                          Text("Total Walkin"),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: widthSize / 15,
                                                      height: heightSize / 13,
                                                      
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                "20",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        24,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700),
                                                              ),
                                                              Icon(Icons
                                                                  .arrow_downward_outlined,color: Colors.red,),
                                                              Text("20%",style: TextStyle(color: Colors.red),),
                                                            ],
                                                          ),
                                                          Text("New Client"),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: widthSize / 15,
                                                      height: heightSize / 13,
                                                      
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                "20",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        24,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700),
                                                              ),
                                                              Icon(Icons
                                                                  .arrow_downward_outlined,color: Colors.red,),
                                                              Text("20%",style: TextStyle(color: Colors.red),),
                                                            ],
                                                          ),
                                                          Text("New Client"),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: widthSize / 1.8,
                                              height: heightSize / 3.5,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 20,
                                                        horizontal: 50),
                                                child: LineChart(
                                                  LineChartData(
                                                    maxY:
                                                        50, // Set the maximum value for the y-axis
                                                    borderData: FlBorderData(
                                                      show: true,
                                                      border: Border(
                                                        bottom: BorderSide(
                                                            color: Colors.black,
                                                            width: 2), // X-axis
                                                        left: BorderSide(
                                                            color: Colors.black,
                                                            width: 2), // Y-axis
                                                        right: BorderSide(
                                                            color: Colors
                                                                .transparent), // No right border
                                                        top: BorderSide(
                                                            color: Colors
                                                                .transparent), // No top border
                                                      ),
                                                    ),
                                                    titlesData: FlTitlesData(
                                                      show: true,
                                                      bottomTitles: AxisTitles(
                                                        sideTitles: SideTitles(
                                                          showTitles: true,
                                                          reservedSize:
                                                              40, // Space for labels
                                                          getTitlesWidget:
                                                              (value, meta) {
                                                            // Customize time intervals on the x-axis
                                                            switch (
                                                                value.toInt()) {
                                                              case 0:
                                                                return Text(
                                                                    '9 to 10',
                                                                    style: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight.bold));
                                                              case 1:
                                                                return Text(
                                                                    '10 to 11',
                                                                    style: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight.bold));
                                                              case 2:
                                                                return Text(
                                                                    '11 to 12',
                                                                    style: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight.bold));
                                                              case 3:
                                                                return Text(
                                                                    '12 to 1',
                                                                    style: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight.bold));
                                                              // Add more time intervals as needed
                                                              default:
                                                                return Container();
                                                            }
                                                          },
                                                          interval:
                                                              0.5, // Ensure there's a space for each hour
                                                        ),
                                                      ),
                                                      leftTitles: AxisTitles(
                                                        sideTitles: SideTitles(
                                                          showTitles: true,
                                                          reservedSize:
                                                              20, // Space for Y-axis values
                                                          interval:
                                                              10, // Set interval for y-axis labels
                                                          getTitlesWidget:
                                                              (value, meta) {
                                                            return Text(
                                                                value
                                                                    .toInt()
                                                                    .toString(),
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold));
                                                          },
                                                        ),
                                                      ),
                                                      rightTitles: AxisTitles(
                                                        sideTitles: SideTitles(
                                                            showTitles:
                                                                false), // No right-side titles
                                                      ),
                                                      topTitles: AxisTitles(
                                                        sideTitles: SideTitles(
                                                            showTitles:
                                                                false), // No top titles
                                                      ),
                                                    ),
                                                    lineBarsData: [
                                                      LineChartBarData(
                                                        spots: [
                                                          FlSpot(0,
                                                              10), // Point for x=0 (9 to 10) and y=10
                                                          FlSpot(1,
                                                              30), // Point for x=1 (10 to 11) and y=30
                                                          FlSpot(2,
                                                              20), // Point for x=2 (11 to 12) and y=20
                                                          FlSpot(3,
                                                              40), // Point for x=3 (12 to 1) and y=40
                                                          // Add more points as needed
                                                        ],
                                                        isCurved:
                                                            true, // Set true for a curved line
                                                        // colors: [Colors.blue], // Line color
                                                        dotData: FlDotData(
                                                            show:
                                                                true), // Enable dots on points
                                                        belowBarData: BarAreaData(
                                                            show:
                                                                false), // Disable area below the line
                                                      ),
                                                    ],
                                                    gridData: FlGridData(
                                                        show:
                                                            false), // Disable grid lines
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: widthSize / 5,
                                        height: heightSize / 1,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                    borderRadius: BorderRadius.circular(14)
                                  ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start, // Ensures alignment to the start
                                          children: [
                                            // Header with title and data
                                            Container(
                                              width: double
                                                  .infinity, // Fill the width
                                              height: heightSize / 20,

                                              padding: EdgeInsets.symmetric(
                                                  horizontal:
                                                      8.0), // Padding inside the header
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "User Demographics",
                                                    style: TextStyle(
                                                        fontWeight: FontWeight
                                                            .bold), // Adjusted text style
                                                  ),
                                                  Container(
                                                    width: widthSize / 17,
                                                    height: heightSize / 30,
                                                    alignment: Alignment
                                                        .center, // Centering the text in the container
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors
                                                              .black), // Optional: background color for data container
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5), // Rounded corners
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Icon(Icons.sort),
                                                        Text(
                                                          "filter",
                                                          style: TextStyle(
                                                              fontSize:
                                                                  12), // Adjusted text size
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                                height:
                                                    10), // Space between header and PieChart

                                            // Expanded PieChart to fill available space
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.all(
                                                    8.0), // Padding around PieChart
                                                child: PieChart(
                                                  PieChartData(
                                                    sectionsSpace: 2,
                                                    sections: [
                                                      PieChartSectionData(
                                                        value: 50,
                                                        color: Colors.green,
                                                        title:
                                                            '50%', // Optional: label for sections
                                                        radius:
                                                            150, // Increase the radius to make the chart larger
                                                        titleStyle: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      PieChartSectionData(
                                                        value: 35,
                                                        color: Colors.blue,
                                                        title: '35%',
                                                        radius:
                                                            150, // Matching the size of the sections
                                                        titleStyle: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      PieChartSectionData(
                                                        value: 25,
                                                        color: Colors.purple,
                                                        title: '25%',
                                                        radius: 150,
                                                        titleStyle: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                    centerSpaceRadius:
                                                        0, // Removes the center space if not needed
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
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
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Row(
                            children: [
                              // Expanded(
                              //   flex: 1,
                              //   child: Container(
                              //     color: Colors.amber,
                              //   ),
                              // ),
                              Expanded(
                                flex: 35,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 39),
                                  child: Container(
                                    color: Colors.white,
                                    width: widthSize / 1.5,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 25),
                                          child: Text(
                                            "Revenue BreakDown",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16),
                                          ),
                                        ),
                                        Container(
                                          width: widthSize / 1.2,
                                          height: heightSize / 11,
                                          child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: 5,
                                            itemBuilder: (context, index) {
                                              double value =
                                                  60; // Example: current value (60%)
                                              double remainingValue = 100 -
                                                  value; // Remaining value (40%)

                                              return Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: widthSize / 6,
                                                    height: heightSize / 10,
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        PieChart(
                                                          PieChartData(
                                                            sectionsSpace: 0,
                                                            centerSpaceRadius:
                                                                30,
                                                            sections: [
                                                              // Filled portion (e.g., 60%)
                                                              PieChartSectionData(
                                                                value: value,
                                                                color: Colors
                                                                    .purple,
                                                                radius: 13,
                                                                title: '',
                                                              ),
                                                              // Remaining portion (e.g., 40%)
                                                              PieChartSectionData(
                                                                value:
                                                                    remainingValue,
                                                                color: Colors
                                                                    .grey, // Set the color for the remaining portion
                                                                radius: 13,
                                                                title: '',
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        // Text placed at the center
                                                        Text(
                                                          '$value%', // Display the percentage value (60%)
                                                          style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        Positioned(
                                                          left: 220,
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                "10000",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        20,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                              ),
                                                              Text("data"),
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Row(
                            children: [
                              // Expanded(
                              //   flex: 1,
                              //   child: Container(),
                              // ),
                              Expanded(
                                flex: 40,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: widthSize / 3,
                                      height: heightSize / 1,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(30.0),
                                        child: BarChart(
                                          BarChartData(
                                            maxY: 50, // X-axis scale max
                                            barGroups: [
                                              BarChartGroupData(
                                                x: 0, // Label 0 (Revenue)
                                                barRods: [
                                                  BarChartRodData(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0),
                                                      toY: 40,
                                                      width: 50,
                                                      color: Colors.black),
                                                ],
                                              ),
                                              BarChartGroupData(
                                                x: 1, // Label 1 (Loss)
                                                barRods: [
                                                  BarChartRodData(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0),
                                                      toY: 20,
                                                      width: 50,
                                                      color: Colors.red),
                                                ],
                                              ),
                                              BarChartGroupData(
                                                x: 2, // Label 2 (Profit)
                                                barRods: [
                                                  BarChartRodData(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0),
                                                      toY: 35,
                                                      width: 50,
                                                      color: Colors.blue),
                                                ],
                                              ),
                                              BarChartGroupData(
                                                x: 3, // Label 3 (Expenses)
                                                barRods: [
                                                  BarChartRodData(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0),
                                                      toY: 45,
                                                      width: 50,
                                                      color: Colors.yellow),
                                                ],
                                              ),
                                            ],
                                            // Remove grid lines but keep the border
                                            gridData: FlGridData(
                                              show: false, // Disable grid lines
                                            ),
                                            borderData: FlBorderData(
                                              show:
                                                  true, // Show only the borders (x and y axes)
                                              border: Border(
                                                bottom: BorderSide(
                                                    color: Colors.black,
                                                    width: 2), // X-axis
                                                left: BorderSide(
                                                    color: Colors.black,
                                                    width: 2), // Y-axis
                                                right: BorderSide(
                                                    color: Colors
                                                        .transparent), // No right border
                                                top: BorderSide(
                                                    color: Colors
                                                        .transparent), // No top border
                                              ),
                                            ),
                                            titlesData: FlTitlesData(
                                              show: true,
                                              bottomTitles: AxisTitles(
                                                sideTitles: SideTitles(
                                                  showTitles: true,
                                                  getTitlesWidget:
                                                      (double value,
                                                          TitleMeta meta) {
                                                    switch (value.toInt()) {
                                                      case 0:
                                                        return Text('Revenue',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold));
                                                      case 1:
                                                        return Text('Loss',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold));
                                                      case 2:
                                                        return Text('Profit',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold));
                                                      case 3:
                                                        return Text('Expenses',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold));
                                                      default:
                                                        return Container();
                                                    }
                                                  },
                                                  reservedSize:
                                                      40, // Space for labels
                                                ),
                                              ),
                                              leftTitles: AxisTitles(
                                                sideTitles: SideTitles(
                                                  showTitles: true,
                                                  interval:
                                                      10, // Set interval for y-axis labels
                                                  getTitlesWidget:
                                                      (double value,
                                                          TitleMeta meta) {
                                                    return Text(
                                                        value
                                                            .toInt()
                                                            .toString(),
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold));
                                                  },
                                                  reservedSize:
                                                      40, // Space for Y-axis values
                                                ),
                                              ),
                                              rightTitles: AxisTitles(
                                                sideTitles: SideTitles(
                                                    showTitles:
                                                        false), // No right-side titles
                                              ),
                                              topTitles: AxisTitles(
                                                sideTitles: SideTitles(
                                                    showTitles:
                                                        false), // No top titles
                                              ),
                                            ),
                                            barTouchData: BarTouchData(
                                                enabled:
                                                    false), // Disable touch gestures
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      clipBehavior: Clip.antiAlias,
                                      width: widthSize / 4,
                                      height: heightSize / 1,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 25),
                                          child: Text(
                                            "Recent Orders",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16),
                                          ),
                                        ),
                                          Container(
                                            width: widthSize / 1,
                                            height: heightSize / 3.5,
                                            child: ListView.builder(
                                              itemCount: 4,
                                              itemBuilder: (context, index) {
                                                return Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    width: widthSize / 1,
                                                    height: heightSize / 20,
                                                    child: Row(
                                                      children: [
                                                        CircleAvatar(
                                                          radius: 32,
                                                          child: Icon(Icons.person_2_outlined),
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
                                                          height:
                                                              heightSize / 40,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                            color:
                                                                Colors.purple,
                                                          ),
                                                          child: Center(child: Text("data")),
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
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: widthSize / 6,
                                      height: heightSize / 1,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 25),
                                          child: Text(
                                            "Revenue BreakDown",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16),
                                          ),
                                        ),
                                          Container(
                                            width: widthSize / 1,
                                            height: heightSize / 3.5,
                                            child: ListView.builder(
                                              itemCount: 4,
                                              itemBuilder: (context, index) {
                                                return Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Container(
                                                    width: widthSize / 1,
                                                    height: heightSize / 20,
                                                    child: Row(
                                                      children: [
                                                        CircleAvatar(
                                                          radius: 32,
                                                          child: Icon(Icons.person_2_outlined),
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
                                                          height:
                                                              heightSize / 40,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                            color:
                                                                Colors.purple,
                                                          ),
                                                          child: Center(child: Text("data")),
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
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
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
    );
  }
}
